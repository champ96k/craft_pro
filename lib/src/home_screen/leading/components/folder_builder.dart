import 'package:craft_pro/core/constants/constants.dart';
import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/leading/components/leading_list_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FolderBuilder extends StatefulWidget {
  const FolderBuilder({Key? key}) : super(key: key);

  @override
  State<FolderBuilder> createState() => _FolderBuilderState();
}

class _FolderBuilderState extends State<FolderBuilder> {
  int _foldertSelectedIndex = -99;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Constants.folderItem.length,
      itemBuilder: (context, index) {
        final item = Constants.folderItem[index];
        return LeadingListComponents(
          count: item.itemCount,
          isSelected: index == _foldertSelectedIndex,
          title: item.name,
          emoji: item.emoji,
          onTap: () {
            setState(() {
              context.read<HomeScreenCubit>().changeView(
                  viewState: ViewState.folderView, folderModel: item);
              _foldertSelectedIndex = index;
            });
          },
        );
      },
    );
  }
}
