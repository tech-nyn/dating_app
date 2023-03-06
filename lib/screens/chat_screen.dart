import 'package:dating_app/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/001.jpg'
                ),
                fit: BoxFit.cover
              )
            ),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.9)
                        ]
                      ),
                    )
                  ),
                ),
                // for chats
                // ignore: sized_box_for_whitespace
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 70.0),
                    child: ListView.builder(
                      reverse: true,
                      itemCount: messages[0].content.length,
                      itemBuilder: ((context, index){
                        return ClipPath(
                          // clipper: CustomClipper(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                            child: Row(
                              mainAxisAlignment: messages[0].content[index].sender == currentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                messages[0].content[index].sender != currentUser ? CircleAvatar(
                                  backgroundImage: AssetImage(messages[0].content[index].sender.picUrl)
                                ) : const Text(''),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: messages[0].content[index].sender == currentUser ? MediaQuery.of(context).size.width * 0.6 : MediaQuery.of(context).size.width - 110.0,
                                  ),
                                  padding: const EdgeInsets.all(16.0),
                                  margin: const EdgeInsets.only(left: 16.0),
                                  decoration: BoxDecoration(
                                    color: messages[0].content[index].sender == currentUser ? const Color.fromARGB(255, 51, 47, 47) : const Color(0xFFC21B53),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                      bottomLeft: messages[0].content[index].sender != currentUser ? Radius.zero : const Radius.circular(12.0),
                                      bottomRight: messages[0].content[index].sender == currentUser ? Radius.zero : const Radius.circular(12.0),
                                    )
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        messages[0].content[index].text!,
                                        style: const TextStyle(
                                          color: Colors.white
                                        ),
                                      ),const SizedBox(height: 16.0,),
                                      Align(
                                        alignment: messages[0].content[index].sender == currentUser ? Alignment.bottomRight : Alignment.bottomLeft,
                                        child: Text(
                                          messages[0].content[index].time,
                                          style: const TextStyle(
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                    ),
                  ),
                ),
                // for input
                Positioned(
                  bottom: 16.0,
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width  - 32.0,
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color.fromARGB(255, 51, 47, 47)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(CupertinoIcons.smiley, color: Colors.white,),
                        ),
                        Expanded(
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(top: 10.0, left: 8.0, right: 4.0),
                              hintText: 'Type your message',
                              hintStyle: TextStyle(color: Colors.white38, fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          // constraints: const BoxConstraints(maxWidth: 45.0, maxHeight: 45.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFC21B53),
                          ),
                          child: const Icon(CupertinoIcons.mic, color: Colors.white, size: 18.0,),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}