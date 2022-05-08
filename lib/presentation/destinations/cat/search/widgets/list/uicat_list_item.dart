import 'package:flutter/material.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';

class UICatListItem extends StatelessWidget {
  final Cat cat;

  const UICatListItem({
    Key? key,
    required this.cat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Text(cat.name.toString()),
        );
      },
    );
  }
}
