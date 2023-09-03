// ignore_for_file: avoid_unnecessary_containers

import 'package:cpsu_midterm_1_2023_starter/screens/home/category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '620710372';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              SizedBox(height: 8.0),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 8.0),

            ],
          ),
        ),
      ),

    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Question 1 Of 5',
              style: TextStyle(
                fontSize: 19.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:
              Card(elevation: 3.2,
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue, // สีพื้นหลังของกรอบ
                  border: Border.all(
                    color: Colors.black, // สีขอบกรอบ
                    width: 2.0, // ความหนาของขอบกรอบ
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(13.5)),
                ),
                child: Center(
                  child: Text('What is the number Twenty',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.5,
                  ),
                ),
              ),
              ),
            ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: OptionButton(
                      icon: Icons.twenty_mp_outlined,
                      text: '20',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: OptionButton(
                      icon: Icons.twenty_one_mp_outlined,
                      text: '21',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: OptionButton(
                      icon: Icons.twenty_two_mp_outlined,
                      text: '22',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: OptionButton(
                      icon: Icons.twenty_three_mp_outlined,
                      text: '23',
                    ),
                  ),
                ],
              ),

            ),

          ],
        ),
      ),

    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child:
        Card(elevation: 3.2,
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.redAccent, // สีพื้นหลังของกรอบ
              border: Border.all(
                color: Colors.black, // สีขอบกรอบ
                width: 2.0, // ความหนาของขอบกรอบ
              ),
              borderRadius: BorderRadius.all(Radius.circular(13.5)),
            ),
            child: Center(
              child: Text(' < ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.5,
                ),
              ),
            ),
          ),
        ),
      ),
        ],
      ),
    ),
    );
  }


}
