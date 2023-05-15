import 'package:craft_pro/core/constants/constants.dart';
import 'package:craft_pro/core/constants/enums/documents_view_enum.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/pages/components/expand_placeholder.dart';
import 'package:craft_pro/src/pages/components/helper_placeholder_widget/helper_placeholder_widget.dart';
import 'package:craft_pro/src/pages/components/item_view/documents_grid_view.dart';
import 'package:craft_pro/src/widget/template_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewComponents extends StatelessWidget {
  const ViewComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constHeight = SizedBox(height: _size.height * 0.03);
    final _cubit = context.read<HomeScreenCubit>();
    return StreamBuilder<DocumentsView>(
      stream: _cubit.documentsViewStream.stream,
      initialData: DocumentsView.gridView,
      builder: (context, data) {
        final _documentsView = data.data;
        return SingleChildScrollView(
          physics: const ScrollPhysics(),
          primary: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TemplatePlaceholder(
                trailling: [
                  InkWell(
                    onTap: () =>
                        _cubit.changeDocumentView(DocumentsView.gridView),
                    child: Icon(
                      Icons.grid_view_sharp,
                      size: 20.0,
                      color: _documentsView == DocumentsView.gridView
                          ? Colors.black87
                          : Colors.black38,
                    ),
                  ),
                  SizedBox(width: _size.width * 0.01),
                  InkWell(
                    onTap: () =>
                        _cubit.changeDocumentView(DocumentsView.listView),
                    child: Icon(
                      Icons.list,
                      size: 20.0,
                      color: _documentsView == DocumentsView.listView
                          ? Colors.black87
                          : Colors.black38,
                    ),
                  ),
                  SizedBox(width: _size.width * 0.01),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.sort,
                      size: 20.0,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(width: _size.width * 0.01),
                ],
              ),
              _constHeight,
              const ExpandPlaceholder(),
              _constHeight,
              DocumentsGridView(items: Constants.dummyModels),
              _constHeight,
              const HelperPlaceholderWidget(),
              _constHeight,
            ],
          ),
        );
      },
    );
  }
}
