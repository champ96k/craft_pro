import 'package:flutter/material.dart';

class DocumentsGridView extends StatelessWidget {
  const DocumentsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.6,
      ),
      itemCount: 10,
      addAutomaticKeepAlives: true,
      clipBehavior: Clip.antiAlias,
      itemBuilder: (context, index) {
        return const Card(
          color: Colors.white,
          shadowColor: Colors.grey,
          clipBehavior: Clip.antiAlias,
        );
      },
    );
  }
}
