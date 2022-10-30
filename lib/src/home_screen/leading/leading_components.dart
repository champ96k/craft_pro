import 'package:craft_pro/core/enum/view_enum.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/leading/components/folder_builder.dart';
import 'package:craft_pro/src/home_screen/leading/components/leading_list_components.dart';
import 'package:craft_pro/src/home_screen/leading/components/leading_tapbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeadingComponents extends StatefulWidget {
  const LeadingComponents({Key? key}) : super(key: key);

  @override
  State<LeadingComponents> createState() => _LeadingComponentsState();
}

class _LeadingComponentsState extends State<LeadingComponents> {
  int _currentSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _constSpace = SizedBox(height: _size.height * 0.02);
    return Container(
      width: _size.width,
      height: _size.height,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          _constSpace,
          const LeadingTapBar(),
          _constSpace,

          ///[Listtile]
          LeadingListComponents(
            icon: Icons.list_alt_outlined,
            isSelected: _currentSelectedIndex == 1,
            title: 'All Documents',
            onTap: () {
              context.read<HomeScreenCubit>().changeView();
              setState(() => _currentSelectedIndex = 1);
            },
          ),
          LeadingListComponents(
            icon: Icons.star_border,
            isSelected: _currentSelectedIndex == 2,
            title: 'Starred',
            onTap: () {
              context
                  .read<HomeScreenCubit>()
                  .changeView(viewState: ViewState.started);
              setState(() => _currentSelectedIndex = 2);
            },
          ),
          LeadingListComponents(
            isSelected: _currentSelectedIndex == 3,
            icon: Icons.sort_rounded,
            title: 'Unsorted',
            onTap: () {
              context
                  .read<HomeScreenCubit>()
                  .changeView(viewState: ViewState.unsorted);
              setState(() => _currentSelectedIndex = 3);
            },
          ),
          LeadingListComponents(
            isSelected: _currentSelectedIndex == 4,
            icon: Icons.ten_mp,
            title: 'My Templets',
            onTap: () {
              context
                  .read<HomeScreenCubit>()
                  .changeView(viewState: ViewState.templets);
              setState(() => _currentSelectedIndex = 4);
            },
          ),
          LeadingListComponents(
            icon: Icons.swap_horizontal_circle_rounded,
            title: 'Shared Content',
            isSelected: _currentSelectedIndex == 5,
            onTap: () {
              context
                  .read<HomeScreenCubit>()
                  .changeView(viewState: ViewState.shared);
              setState(() => _currentSelectedIndex = 5);
            },
          ),

          _constSpace,

          const ListTile(
            leading: Text(
              "Folders",
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            trailing: Icon(
              Icons.add_circle_outline,
              size: 18.0,
            ),
          ),

          const FolderBuilder(),

          LeadingListComponents(
            iconSize: 12.0,
            icon: Icons.arrow_forward_ios_outlined,
            title: '👋 How to used craft pro',
            isSelected: _currentSelectedIndex == 7,
            onTap: () {
              setState(() => _currentSelectedIndex = 7);
            },
          ),

          _constSpace,

          const Divider(color: Colors.black12),

          LeadingListComponents(
            icon: Icons.delete,
            title: 'Recently Deleted',
            isSelected: _currentSelectedIndex == 6,
            onTap: () {
              context
                  .read<HomeScreenCubit>()
                  .changeView(viewState: ViewState.recentlyDeleted);
              setState(() => _currentSelectedIndex = 6);
            },
          ),
        ],
      ),
    );
  }
}
