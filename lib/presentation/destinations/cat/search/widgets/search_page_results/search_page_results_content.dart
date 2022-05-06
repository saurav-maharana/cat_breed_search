import 'package:flutter/material.dart';

class CatSearchPageResultsContent extends StatelessWidget {
  final String searchTerm;

  const CatSearchPageResultsContent({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, index) {
          return const ListTile(
            leading: Text("Leading goes Here"),
          );
        }),
      ),
    );
  }
}
