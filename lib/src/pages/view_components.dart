import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/trailing/components/trailing_header_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewComponents extends StatelessWidget {
  const ViewComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constSpacing = SizedBox(height: _size.height * 0.03);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _constSpacing,
        const Text(
          "All Documents",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        _constSpacing,
        Row(
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
            const SizedBox(width: 20.0),
            const TrailingHeaderComponents(
              title: 'New Folder',
              subTitle: 'Quickly organize your notes',
              iconData: Icons.create_new_folder_outlined,
              iconColor: Colors.indigoAccent,
            ),
            const SizedBox(width: 20.0),
            const TrailingHeaderComponents(
              title: 'Templetes',
              subTitle: 'Browes & Pick a templets',
              iconData: Icons.ten_mp,
              iconColor: Colors.grey,
            ),
            const SizedBox(width: 20.0),
          ],
        ),
        _constSpacing,
        const Text("Bottom helper widget"),
      ],
    );
  }
}
