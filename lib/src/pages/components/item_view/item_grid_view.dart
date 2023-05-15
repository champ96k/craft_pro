import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/core/model/editor_model.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/pages/cubit/text_editor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({Key? key, required this.items}) : super(key: key);

  final List<EditorModel> items;

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
      itemCount: items.length,
      addAutomaticKeepAlives: true,
      clipBehavior: Clip.antiAlias,
      itemBuilder: (context, index) {
        final _element = items[index];
        return GestureDetector(
          onTap: () {
            context
                .read<TextEditorCubit>()
                .preFillValue(value: _element.contain);
            context.read<HomeScreenCubit>().changeView(
                  viewState: ViewState.edit,
                  editModel: _element,
                );
          },
          child: Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            clipBehavior: Clip.antiAlias,
            child: Center(child: Text(_element.title)),
          ),
        );
      },
    );
  }
}
