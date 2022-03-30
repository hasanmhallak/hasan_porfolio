import 'package:flutter/material.dart';

import 'row_info.dart';

class AgeAndLocation extends StatelessWidget {
  const AgeAndLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RowInfo(
          title: 'Residency',
          text: 'Egypt',
        ),
        RowInfo(
          title: 'City',
          text: 'Obour',
        ),
        RowInfo(
          title: 'Age',
          text: '24',
        ),
      ],
    );
  }
}
