import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  const CircularAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/abstract-watercolor-guitar-exploding-with-colorful-motion-generated-by-ai_188544-19725.jpg?size=626&ext=jpg&ga=GA1.1.1454705726.1706974768&semt=ais"),
                      fit: BoxFit.cover)),
              child: const Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 58,
                      backgroundImage: NetworkImage(
                        // userimage,
                        "https://www.freepik.com/free-photo/graceful-long-haired-ginger-girl-looking-shoulder-laughing-pretty-woman-beret-enjoying-walk_12018110.htm#fromView=search&page=1&position=23&uuid=75fad2d0-2baa-416c-9f5d-5cc496b20d58"
                      ),
                    ),
                  )
                ],
              ),
            
    );
  }
}