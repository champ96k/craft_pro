import 'package:craft_pro/core/constants/enums/documents_view_enum.dart';
import 'package:craft_pro/core/model/editor_model.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/pages/components/item_view/item_grid_view.dart';
import 'package:craft_pro/src/pages/components/item_view/item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocumentsGridView extends StatelessWidget {
  const DocumentsGridView({Key? key, required this.items}) : super(key: key);

  final List<EditorModel> items;

  @override
  Widget build(BuildContext context) {
    final _cubit = context.read<HomeScreenCubit>();
    return StreamBuilder<DocumentsView>(
      stream: _cubit.documentsViewStream.stream,
      initialData: DocumentsView.gridView,
      builder: (context, snapshot) {
        final view = snapshot.data;
        if (view == DocumentsView.listView) {
          return ItemListView(items: items);
        } else {
          return ItemGridView(items: items);
        }
      },
    );
  }
}
