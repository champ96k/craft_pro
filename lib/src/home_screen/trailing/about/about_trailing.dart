import 'package:craft_pro/core/constants/constants.dart';
import 'package:craft_pro/src/home_screen/cubit/home_screen_cubit.dart';
import 'package:craft_pro/src/home_screen/trailing/about/components/about_trailling_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutTrailing extends StatelessWidget {
  const AboutTrailing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is EditScreenState) {
          return const Text("Edit components");
        } else if (state is StartedScreenState) {
          return const AboutTraillingTile(aboutText: Constants.starDocuments);
        } else if (state is UnsortedScreenState) {
          return const AboutTraillingTile(
              aboutText: Constants.unsortedDocuments);
        } else if (state is TempletsScreenState) {
          return const AboutTraillingTile(
              aboutText: Constants.templatesDocuments);
        } else if (state is FolderViewScreenState) {
          return AboutTraillingTile(aboutText: state.folderModel?.description);
        } else if (state is RecentlyDeletediewScreenState) {
          return const AboutTraillingTile();
        } else if (state is SharedScreenState) {
          return const SizedBox();
        } else {
          return const AboutTraillingTile();
        }
      },
    );
  }
}
