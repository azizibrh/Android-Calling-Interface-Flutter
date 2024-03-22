import 'package:assig_one_aziz/utils/theme.dart';
import 'package:flutter/material.dart';

class CallerDetails extends StatelessWidget {
  final bool isCalling;
  const CallerDetails({
    Key? key,
    this.isCalling = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "caller",
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: isCalling ? 'Incoming call from ' : "Calling  ",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextSpan(
                  text: ' ',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: CallTheme.orange,
                      ),
                ),
                if (isCalling)
                  TextSpan(
                    text: '  ',
                    style: Theme.of(context).textTheme.headline6,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              "Telesom Eng.Zakariya",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Mobile +252-63-4570101",
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
