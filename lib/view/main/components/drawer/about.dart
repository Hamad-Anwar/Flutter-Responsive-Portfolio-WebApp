import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color:  bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2,),
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(defaultPadding/6),
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.blue.shade900,
                  ],
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.pink,blurRadius: 10,offset: Offset(0, 2)),
                  BoxShadow(color: Colors.blue,blurRadius: 10,offset: Offset(0, -2)),
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                  child: Transform.rotate(
                      angle: 0.1,
                      child: Image.asset('assets/images/profile.png',fit: BoxFit.cover,))),
              ),
            const Spacer(),
            Text('Hamad Anwar',style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(height: defaultPadding/4,),
            const Text('Flutter Developer & The Student of\nSoftware Engineering',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
