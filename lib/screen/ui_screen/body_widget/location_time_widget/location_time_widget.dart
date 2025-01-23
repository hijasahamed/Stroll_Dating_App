import 'package:flutter/material.dart';

class LocationTimeWidget extends StatelessWidget {
  const LocationTimeWidget({super.key, required this.screensize});

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screensize.height / 12,
      left: 0,
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Text(
                'Stroll Bonfire',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: screensize.width/14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/clock.png',
                height: screensize.height/45,
                width: screensize.height/45,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 5),
              Text(
                '22h 00m',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/person.png',
                height: screensize.height/45,
                width: screensize.height/45,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 5),
              Text('103', style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}