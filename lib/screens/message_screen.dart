import 'package:dating_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:dating_app/data/data.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 48, 46, 46),
          centerTitle: true,
          elevation: 0.0,
          leading: const Icon(CupertinoIcons.plus_bubble),
          actions: const [Icon(CupertinoIcons.search), SizedBox(width: 16.0,)],
          // border: Border(),
          title: const Text(
            'Messages',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            // color: Colors.red,
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (() => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const ChatScreen()))),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(messages[index].sender.picUrl),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 2.0,
                          child: Container(
                            width: 9.0,
                            height: 9.0,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              border: Border.all(
                                color: messages[index].sender.isOnline == true  ?  const Color.fromARGB(255, 48, 46, 46) : Colors.transparent
                              ),
                              shape: BoxShape.circle
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text(
                      messages[index].sender.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      messages[index].content.last.text!,
                      style: const TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14.0
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          messages[index].content.last.time,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: messages[index].content.last.isRead == false ? const Color(0xFFC21B53) : Colors.transparent,
                            shape: BoxShape.circle
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
        )
      ),
    );
  }
}


