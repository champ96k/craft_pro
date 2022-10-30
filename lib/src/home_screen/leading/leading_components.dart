import 'package:craft_pro/src/home_screen/leading/components/leading_list_components.dart';
import 'package:flutter/material.dart';

class LeadingComponents extends StatelessWidget {
  const LeadingComponents({Key? key}) : super(key: key);

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

          ///[Tap bar]
          Container(
            width: _size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            height: _size.height * 0.035,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.calendar_view_week,
                  size: 18.0,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 14.0,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.search,
                  size: 16.0,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.black45,
                  size: 16.0,
                ),
              ],
            ),
          ),
          _constSpace,

          ///[Listtile]
          const LeadingListComponents(
            icon: Icons.list_alt_outlined,
            isSelected: true,
            title: 'All Documents',
          ),
          const LeadingListComponents(
            icon: Icons.star_border,
            title: 'Starred',
          ),
          const LeadingListComponents(
            icon: Icons.sort_rounded,
            title: 'Unsorted',
          ),
          const LeadingListComponents(
            icon: Icons.ten_mp,
            title: 'My Templets',
          ),
          const LeadingListComponents(
            icon: Icons.swap_horizontal_circle_rounded,
            title: 'Shared Content',
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

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Morning standup',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Productivity Tips',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Quick notes',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Finance',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Technical Interview',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Tech Blogs',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Reading list',
          ),

          const LeadingListComponents(
            icon: Icons.folder_open,
            title: 'Fitness',
          ),

          const LeadingListComponents(
            iconSize: 12.0,
            icon: Icons.arrow_forward_ios_outlined,
            title: '👋 How to used craft pro',
            isSelected: true,
          ),

          _constSpace,

          const Divider(color: Colors.black12),

          const LeadingListComponents(
            icon: Icons.delete,
            title: 'Recently Deleted',
          ),
        ],
      ),
    );
  }
}
