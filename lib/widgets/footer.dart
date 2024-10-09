import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset(
              'assets/logo/corbado.svg',
              width: 20,
            ),
          ),
          Text(
            'Corbado Developer Panel',
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
        ],
      ),
    );
  }
}
