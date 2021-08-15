import 'package:flutter/material.dart';
import 'package:youtube_app/Declarations.dart/constants.dart';

class TopTags extends StatelessWidget {
  const TopTags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.25,
            ),
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.25,
            ),
          ),
          color: kSecondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 5,
          ),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tagList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.00,
                    vertical: 1.5,
                  ),
                  child: Chip(
                    labelPadding: const EdgeInsets.all(2.0),
                    label: Text(
                      tagList[index],
                      style: TextStyle(
                        color: index == 0 ? Colors.black : Colors.white,
                      ),
                    ),
                    backgroundColor: index == 0 ? Colors.white : kaccentColor,
                    side: BorderSide(color: kaccentColor, width: 0.01),
                    padding: const EdgeInsets.all(kPadding * 1.5),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
