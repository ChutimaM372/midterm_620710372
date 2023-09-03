import 'package:flutter/material.dart';
/*
class CategoryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final bool isSelected;

  const CategoryButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    /*return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );*/


  }
}*/
class OptionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  OptionButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // สีขอบกรอบ
              width: 2.0, // ความหนาขอบกรอบ

            ),
            borderRadius: BorderRadius.circular(8.0), // ความโค้งของมุมกรอบ
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  // เมื่อปุ่มถูกกด
                  // ใส่โค้ดที่ต้องการให้ทำงานที่นี่
                  print("$text button clicked");
                },
                icon: Icon(icon),
              ),
              Text(text),
            ],
          ),
        ),
      ],
    );
  }
}