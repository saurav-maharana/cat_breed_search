import 'package:flutter/material.dart';

class CatSearchPageBodyContent extends StatelessWidget {
  final String searchHint;
  final Widget child;

  const CatSearchPageBodyContent({
    Key? key,
    required this.searchHint,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Flex(
        direction: Axis.vertical,
        children: [
          TextField(
            controller: null,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: searchHint,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
