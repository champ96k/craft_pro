import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/core/model/editor_model.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/pages/cubit/text_editor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key, required this.items}) : super(key: key);

  final List<EditorModel> items;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 26.0, left: 16.0),
            child: Row(
              children: const [
                Text(
                  "Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "Created",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: _size.height * 0.01),
          const Divider(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            primary: true,
            shrinkWrap: true,
            itemCount: items.length,
            addAutomaticKeepAlives: true,
            clipBehavior: Clip.antiAlias,
            itemBuilder: (context, index) {
              final _element = items[index];
              return ListTile(
                onTap: () {
                  context
                      .read<TextEditorCubit>()
                      .preFillValue(value: _element.contain);
                  context.read<HomeScreenCubit>().changeView(
                        viewState: ViewState.edit,
                        editModel: _element,
                      );
                },
                minVerticalPadding: 0.0,
                contentPadding: const EdgeInsets.all(0.0),
                autofocus: true,
                minLeadingWidth: 0.0,
                title: Text(_element.title),
                subtitle: Text(
                  _element.subTitle,
                  style: const TextStyle(color: Colors.grey),
                ),
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  color: Colors.white,
                  child: SizedBox(
                    height: _size.height * 0.06,
                    width: _size.width * 0.026,
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: _size.width * 0.012),
                  child: Text(
                    _element.createAt,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
