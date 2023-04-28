import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelperPlaceholderCard extends StatelessWidget {
  const HelperPlaceholderCard({
    Key? key,
    required this.color,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final Color color;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        radius: 6.0,
        hoverColor: Colors.transparent,
        focusColor: Colors.red.withOpacity(0.5),
        splashColor: Colors.red.withOpacity(0.2),
        highlightColor: Colors.indigo.withOpacity(0.2),
        onTap: () {
          //!
        },
        child: Container(
          alignment: Alignment.center,
          width: _size.width * 0.185,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.cardo(
                  textStyle: TextStyle(
                    fontSize: 26.0,
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.01),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
