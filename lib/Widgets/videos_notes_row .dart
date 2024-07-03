import 'package:flutter/material.dart';

class VideosNotesRow extends StatelessWidget {
  final bool showVideos;
  final void Function(bool) onToggle;

  const VideosNotesRow({
    Key? key,
    required this.showVideos,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () => onToggle(true),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 8),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  side: BorderSide(
                    color: showVideos ? Colors.blue : Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              'Videos',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(width: 4),
        Expanded(
          child: ElevatedButton(
            onPressed: () => onToggle(false),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 8),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  side: BorderSide(
                    color: showVideos ? Colors.grey : Colors.blue,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              'Notes',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(width: 4),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Add your logic for Live Session button press
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 8),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: showVideos ? Colors.blue : Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              'Live Session',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
