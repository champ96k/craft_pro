import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/trailing/components/trailing_header_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemplatePlaceholder extends StatelessWidget {
  const TemplatePlaceholder({Key? key, this.title = 'All Documents'})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constSpacing = SizedBox(height: _size.height * 0.03);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _constSpacing,
        Text(
          title,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        _constSpacing,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TrailingHeaderComponents(
              onTap: () {
                context
                    .read<HomeScreenCubit>()
                    .changeView(viewState: ViewState.edit);
              },
              title: 'New Documents',
              subTitle: 'Start writing on blank page',
              iconData: Icons.note_add,
            ),
            const TrailingHeaderComponents(
              title: 'New Folder',
              subTitle: 'Quickly organize your notes',
              iconData: Icons.create_new_folder_outlined,
              iconColor: Colors.indigoAccent,
            ),
            const TrailingHeaderComponents(
              title: 'Templetes',
              subTitle: 'Browes & Pick a templets',
              iconData: Icons.ten_mp,
              iconColor: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
