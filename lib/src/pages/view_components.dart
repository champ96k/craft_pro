import 'package:craft_pro/src/pages/components/expand_placeholder.dart';
import 'package:craft_pro/src/pages/components/helper_placeholder_widget/helper_placeholder_widget.dart';
import 'package:craft_pro/src/pages/components/item_view/documents_grid_view.dart';
import 'package:craft_pro/src/widget/template_placeholder.dart';
import 'package:flutter/material.dart';

class ViewComponents extends StatelessWidget {
  const ViewComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constHeight = SizedBox(height: _size.height * 0.03);
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      primary: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TemplatePlaceholder(),
          _constHeight,
          const ExpandPlaceholder(),
          _constHeight,
          const DocumentsGridView(),
          _constHeight,
          const HelperPlaceholderWidget(),
          _constHeight,
        ],
      ),
    );
  }
}
