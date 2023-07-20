import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';

class RoundedEdgesButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;
  final Function onTap;

  const RoundedEdgesButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () => onTap,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class ContactView extends StatelessWidget {
  final IconData icon;
  final String details;

  const ContactView({
    Key? key,
    required this.icon,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        horizontalSpace20,
        SizedBox(width: 300.0, child: Text(details)),
      ],
    );
  }
}
