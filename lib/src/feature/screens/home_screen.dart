import 'package:flutter/material.dart';
import 'package:flutter_application_4/src/feature/widgets/my_health_app_drawer.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: Text('Welcome to my App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.push('/age'),
              child: Text('Calculate Age'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 10, 13, 194),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.push('/bmi'),
              child: Text('Calculate BMI'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 11, 168, 235),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.push('/zodiac'),
              child: Text('Determine Zodiac Sign'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 224, 47, 16),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
