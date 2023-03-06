import 'package:dating_app/screens/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context){

    final size = MediaQuery.of(context).size;
    const Color brandColor = Color(0xFFC21B53);
    
    // return Container(
    //   child: CupertinoApp(
    //     home: CupertinoPageScaffold(
      return  CupertinoPageScaffold(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img/001.jpg',
                )
              ),
            ),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height,
                    child: ShaderMask(
                      shaderCallback: (rect) => const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // stops: [0.0, 0.9],
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ]
                      ).createShader(Rect.fromLTRB(0.0, -140, rect.width, rect.height - 20.0)),
                      child: Image.asset(
                        'assets/img/001.jpg',
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16.0,
                    right: 16.0,
                    // invinsible container
                    // child: Container(
                    child: SizedBox(
                      width: 45.0,
                      height: 45.0,
                      // color: brandColor,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // profile Pic
                          Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img/010.jpg',
                                ),
                                fit: BoxFit.cover
                              )
                            )
                          ),
                          // message counter
                          Positioned(
                            bottom: -10.0,
                            left:  -10.0,
                            child: GestureDetector(
                              onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MessageScreen())),
                              child: Container(
                                width: 26.0,
                                height: 26.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: brandColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                )
                              ),
                            ),
                          )
                        ]
                      )
                    )
                  ),
                  Positioned(
                    bottom: 0.0,
                    // child: Container(
                    child: SizedBox(
                      // color: Colors.green,
                      width: size.width,
                      height: 200.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Roxanne',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w600
                                        )),
                                      TextSpan(
                                        text: ' (21)',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w100
                                        )
                                      )
                                    ]
                                  )
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: const [
                                    Icon(Icons.location_on_sharp, color: Colors.white, size: 14.0),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'OH, Columbus',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    )
                                  ]
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.person_search_rounded, color: Colors.white, size: 14.0),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'Relationship',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    )
                                  ]
                                )
                              ]
                            )
                          ),
                          const SizedBox(height: 16.0,),
      
                          // Container(
                          SizedBox(
                            width: size.width,
                            height: 80.0,
                            // color: Colors.brown,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                ConnectListingCTA(iconPath: 'assets/img/svg/heart-break.svg', size: 20.0, circleSize: 40.0, borderColor: Colors.white,),
                                SizedBox(width: 16.0),
                                ConnectListingCTA(iconPath: 'assets/img/svg/heart.svg', size: 25.0,circleSize: 55.0,  fillColor: brandColor),
                                SizedBox(width: 16.0),
                                ConnectListingCTA(iconPath: 'assets/img/svg/info.svg', size: 20.0,circleSize: 40.0, borderColor: Colors.white,)
                              ]
                            ),
                          )
                        ]
                      ),
                    )
                  ),
                ]
              ),
            )
          )
      //   ),
      // ),
    );
  }
}

class ConnectListingCTA extends StatelessWidget {
  final String iconPath;
  final double size;
  final double circleSize;
  final Color? borderColor;
  final Color? fillColor;

  const ConnectListingCTA({
    Key? key,
    required this.iconPath,
    required this.size,
    required this.circleSize,
    this.borderColor,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize,
      height: circleSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor ?? Colors.transparent,
        border: borderColor != null ? Border.all(
          color: borderColor ?? Colors.transparent,
          width: 2.0,
        ) : const Border(),
      ),
      child: SvgPicture.asset(iconPath, color: Colors.white, width: size, height: size,),
    );
  }
}