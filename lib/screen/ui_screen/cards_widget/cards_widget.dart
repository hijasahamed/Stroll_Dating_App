import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key, required this.text, required this.profileText});
  final String text;
  final String profileText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFF232A2E),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: profileText == 'D' ? Color(0XFF8B88EF) : Colors.transparent,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        profileText == 'D' ? Colors.transparent : Colors.white,
                  ),
                  shape: BoxShape.circle,
                  color:
                      profileText == 'D'
                          ? Color(0XFF8B88EF)
                          : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    profileText,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}