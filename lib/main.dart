import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Proste Bezier Curve',style: TextStyle(color: Colors.white,fontSize: 15)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const Text('position is top',style: TextStyle(fontSize: 18),),
            const SizedBox(height: 10),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 0),
                    top: Offset(screenWidth / 2, 30),
                    end: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                color: Colors.red,
                height: 150,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 30),
                    top: Offset(screenWidth / 2, 0),
                    end: const Offset(0, 30),
                  ),
                ],
              ),
              child: Container(
                color: Colors.blue,
                height: 150,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 30),
                    top: Offset(screenWidth / 4 * 3, 0),
                    end: Offset(screenWidth / 2, 30),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 30),
                    top: Offset(screenWidth / 4, 60),
                    end: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                color: Colors.pink,
                height: 150,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 0),
                    top: Offset(screenWidth / 4 * 3, 60),
                    end: Offset(screenWidth / 2, 30),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 30),
                    top: Offset(screenWidth / 4, 0),
                    end: const Offset(0, 30),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            const Text('position is left'),
            const SizedBox(height: 20),
            ClipPath(
              clipper: ProsteBezierCurve(
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 0),
                    top: const Offset(30, 75),
                    end: const Offset(0, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                list: [
                  BezierCurveSection(
                    start: const Offset(20, 0),
                    top: const Offset(0, 75),
                    end: const Offset(20, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.blue,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                list: [
                  BezierCurveSection(
                    start: const Offset(20, 0),
                    top: const Offset(0, 37.5),
                    end: const Offset(20, 75),
                  ),
                  BezierCurveSection(
                    start: const Offset(20, 75),
                    top: const Offset(40, 112.5),
                    end: const Offset(0, 150),
                  ),
                ],
              ),
              child: Container(
                color: Colors.pink,
                height: 150,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 0),
                    top: const Offset(40, 37.5),
                    end: const Offset(20, 75),
                  ),
                  BezierCurveSection(
                    start: const Offset(20, 75),
                    top: const Offset(0, 112.5),
                    end: const Offset(20, 150),
                  ),
                ],
              ),
              child: Container(
                color: Colors.green,
                height: 150,
              ),
            ),
            const SizedBox(height: 20),
            const Text('position is bottom'),
            const SizedBox(height: 20),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 150),
                    top: Offset(screenWidth / 2, 100),
                    end: Offset(screenWidth, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 100),
                    top: Offset(screenWidth / 2, 150),
                    end: Offset(screenWidth, 100),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.blue,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 150),
                    top: Offset(screenWidth / 4, 100),
                    end: Offset(screenWidth / 2, 125),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 125),
                    top: Offset(screenWidth / 4 * 3, 150),
                    end: Offset(screenWidth, 125),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.pink,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: const Offset(0, 125),
                    top: Offset(screenWidth / 4, 150),
                    end: Offset(screenWidth / 2, 125),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 125),
                    top: Offset(screenWidth / 4 * 3, 100),
                    end: Offset(screenWidth, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            const Text('position is right'),
            const SizedBox(height: 20),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.right,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 150),
                    top: Offset(screenWidth - 30, 75),
                    end: Offset(screenWidth, 0),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.right,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth - 30, 150),
                    top: Offset(screenWidth, 75),
                    end: Offset(screenWidth - 30, 0),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.blue,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.right,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth - 30, 150),
                    top: Offset(screenWidth - 60, 112.5),
                    end: Offset(screenWidth - 30, 75),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth - 30, 50),
                    top: Offset(screenWidth, 37.5),
                    end: Offset(screenWidth - 30, 0),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.pink,
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.right,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth - 30, 150),
                    top: Offset(screenWidth, 112.5),
                    end: Offset(screenWidth - 30, 75),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth, 75),
                    top: Offset(screenWidth - 60, 37.5),
                    end: Offset(screenWidth - 30, 0),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            const Text('custom self clipper'),
            const SizedBox(height: 20),
            ClipPath(
              clipper: CustomSelfClipper1(),
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  height: 250,
                  color: Colors.pink,
                ),
                ClipPath(
                  clipper: CustomSelfClipper2(),
                  child: Container(
                    height: 250,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text('ThirdOrderBezierCurve'),
            const SizedBox(height: 20),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(100, 0),
                    p2: const Offset(0, 0),
                    p3: const Offset(100, 150),
                    p4: const Offset(0, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.purple,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 0),
                    p2: const Offset(100, 0),
                    p3: const Offset(0, 150),
                    p4: const Offset(100, 150),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: Colors.pink,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 0),
                    p2: const Offset(100, 0),
                    p3: const Offset(0, 150),
                    p4: const Offset(100, 150),
                  ),
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(100, 150),
                    p2: const Offset(0, 150),
                    p3: const Offset(100, 300),
                    p4: const Offset(0, 300),
                  ),
                ],
              ),
              child: Container(
                height: 300,
                color: Colors.green,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 150),
                    p2: const Offset(0, 0),
                    p3: Offset(screenWidth, 150),
                    p4: Offset(screenWidth, 0),
                  ),
                ],
              ),
              child: Container(
                color: Colors.red,
                height: 150,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 80),
                    p2: const Offset(0, 200),
                    p3: Offset(screenWidth, 80),
                    p4: Offset(screenWidth, 200),
                  ),
                ],
              ),
              child: Container(
                height: 200,
                color: Colors.yellow,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: const Offset(0, 100),
                    p2: const Offset(0, 200),
                    p3: Offset(screenWidth / 2, 100),
                    p4: Offset(screenWidth / 2, 200),
                  ),
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth / 2, 200),
                    p2: Offset(screenWidth / 2, 100),
                    p3: Offset(screenWidth, 200),
                    p4: Offset(screenWidth, 100),
                  ),
                ],
              ),
              child: Container(
                height: 200,
                color: Colors.purple,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                  position: ClipPosition.right,
                  list: [
                    ThirdOrderBezierCurveSection(
                      p1: Offset(screenWidth - 100, 150),
                      p2: Offset(screenWidth, 150),
                      p4: Offset(screenWidth, 0),
                      p3: Offset(screenWidth - 100, 0),
                    ),
                  ]),
              child: Container(
                height: 150,
                color: Colors.cyanAccent,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                  position: ClipPosition.right,
                  list: [
                    ThirdOrderBezierCurveSection(
                      p2: Offset(screenWidth - 100, 150),
                      p1: Offset(screenWidth, 150),
                      p3: Offset(screenWidth, 0),
                      p4: Offset(screenWidth - 100, 0),
                    ),
                  ]),
              child: Container(
                height: 150,
                color: Colors.deepOrange,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.right,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth - 100, 200),
                    p2: Offset(screenWidth, 200),
                    p3: Offset(screenWidth - 100, 100),
                    p4: Offset(screenWidth, 100),
                  ),
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth, 100),
                    p2: Offset(screenWidth - 100, 100),
                    p4: Offset(screenWidth - 100, 0),
                    p3: Offset(screenWidth, 0),
                  ),
                ],
              ),
              child: Container(
                height: 200,
                color: Colors.amberAccent,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.top,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth, 0),
                    p2: Offset(screenWidth, 100),
                    p4: const Offset(0, 100),
                    p3: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                color: Colors.pink,
                height: 200,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.top,
                list: [
                  ThirdOrderBezierCurveSection(
                    p2: Offset(screenWidth, 0),
                    p1: Offset(screenWidth, 100),
                    p3: const Offset(0, 100),
                    p4: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                color: Colors.grey,
                height: 200,
              ),
            ),
            ClipPath(
              clipper: ProsteThirdOrderBezierCurve(
                position: ClipPosition.top,
                list: [
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth, 0),
                    p2: Offset(screenWidth, 100),
                    p4: Offset(screenWidth / 2, 100),
                    p3: Offset(screenWidth / 2, 0),
                  ),
                  ThirdOrderBezierCurveSection(
                    p1: Offset(screenWidth / 2, 100),
                    p2: Offset(screenWidth / 2, 0),
                    p3: const Offset(0, 100),
                    p4: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                height: 200,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      )
    );
  }
}

class CustomSelfClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: const Offset(0, 30),
      top: const Offset(10, 45),
      end: const Offset(0, 60),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width, size.height - 90),
      top: Offset(size.width - 10, size.height - 105),
      end: Offset(size.width, size.height - 120),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, 30);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 90);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class CustomSelfClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: Offset(0, size.height),
      top: Offset(30, size.height - 50),
      end: Offset(80, size.height - 70),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width - 100, size.height - 70),
      top: Offset(size.width - 30, size.height - 95),
      end: Offset(size.width, size.height - 160),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(size.width - 100, size.height - 70);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}