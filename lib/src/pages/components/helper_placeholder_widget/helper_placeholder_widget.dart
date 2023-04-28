import 'package:craft_pro/core/constants/constants.dart';
import 'package:craft_pro/src/pages/components/helper_placeholder_widget/helper_placeholder_card.dart';
import 'package:flutter/material.dart';

class HelperPlaceholderWidget extends StatefulWidget {
  const HelperPlaceholderWidget({Key? key}) : super(key: key);

  @override
  State<HelperPlaceholderWidget> createState() =>
      _HelperPlaceholderWidgetState();
}

class _HelperPlaceholderWidgetState extends State<HelperPlaceholderWidget> {
  bool _isActive = true;
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return _isActive
        ? Container(
            height: _size.height * 0.26,
            width: _size.width,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
              color: Colors.black.withOpacity(0.03),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        "Craft pro For...",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() => _isActive = false);
                        },
                        child: const CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.black12,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _size.height * 0.015),
                SizedBox(
                  width: _size.width,
                  height: _size.height * 0.18,
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.placeholderCard.length,
                    itemBuilder: (context, index) {
                      final _item = Constants.placeholderCard[index];
                      return HelperPlaceholderCard(
                        color: _item.color,
                        subTitle: _item.subTitle,
                        title: _item.title,
                      );
                    },
                  ),
                )
              ],
            ),
          )
        : const SizedBox();
  }
}
