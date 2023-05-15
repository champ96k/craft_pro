import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/trailing/about/about_trailing.dart';
import 'package:craft_pro/src/pages/cubit/text_editor_cubit.dart';
import 'package:craft_pro/src/pages/edit_components.dart';
import 'package:craft_pro/src/pages/folder_view_screen.dart';
import 'package:craft_pro/src/pages/recently_deleted_view_screen.dart';
import 'package:craft_pro/src/pages/shared_screen.dart';
import 'package:craft_pro/src/pages/started_screen.dart';
import 'package:craft_pro/src/pages/templets_screen.dart';
import 'package:craft_pro/src/pages/unsorted_screen.dart';
import 'package:craft_pro/src/pages/view_components.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrailingComponents extends StatelessWidget {
  const TrailingComponents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      width: _size.width,
      height: _size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
                builder: (context, state) {
                  if (state is EditScreenState) {
                    final contain = state.model?.contain ?? ' ';
                    context
                        .read<TextEditorCubit>()
                        .preFillValue(value: contain);
                    return Column(
                      children: [
                        FleatherToolbar.basic(
                          controller:
                              context.read<TextEditorCubit>().controller,
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.grey.shade200,
                        ),
                        const Expanded(child: EditComponents()),
                      ],
                    );
                  } else if (state is StartedScreenState) {
                    return const StartedScreen();
                  } else if (state is UnsortedScreenState) {
                    return const UnsortedScreen();
                  } else if (state is TempletsScreenState) {
                    return const TempletsScreen();
                  } else if (state is FolderViewScreenState) {
                    return FolderViewScreen(folder: state.folderModel);
                  } else if (state is RecentlyDeletediewScreenState) {
                    return const RecentlyDeletedViewScreen();
                  } else if (state is SharedScreenState) {
                    return const SharedScreen();
                  } else {
                    return const ViewComponents();
                  }
                },
              ),
            ),
          ),
          Container(
            height: _size.height,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                  width: 0.75,
                ),
              ),
            ),
          ),
          const Expanded(flex: 3, child: AboutTrailing()),
        ],
      ),
    );
  }
}
