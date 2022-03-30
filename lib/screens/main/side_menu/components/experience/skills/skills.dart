import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import 'skills_list.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(
        //     bottom: Constants.defaultPadding,
        //   ),
        //   child: Text('Skills', style: Theme.of(context).textTheme.subtitle2),
        // ),
        Text('Skills', style: Theme.of(context).textTheme.subtitle2),
        const SizedBox(height: Constants.defaultPadding),
        ...animatedIndicators,
        const Divider(),
        ...knowledge,
      ],
    );
  }
}
