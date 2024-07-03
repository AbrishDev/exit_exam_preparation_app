import 'package:exit_exam_preparation_app/utils/color_assets.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final void Function(String)? onSearchTextChanged;

  const AppHeader({
    Key? key,
    required this.title,
    this.onSearchTextChanged,
  }) : super(key: key);

  @override
  _AppHeaderState createState() => _AppHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppHeaderState extends State<AppHeader> {
  bool _isSearchActive = false;
  late FocusNode _focusNode;
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu), // Hamburger icon
            onPressed: () {
              Scaffold.of(context)
                  .openDrawer(); // Open drawer on hamburger click
            },
          );
        },
      ),
      title: _isSearchActive
          ? TextField(
              focusNode: _focusNode,
              onChanged: widget.onSearchTextChanged,
              decoration: const InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            )
          : Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
      actions: <Widget>[
        IconButton(
          icon: _isSearchActive
              ? const Icon(Icons.close)
              : const Icon(Icons.search),
          onPressed: () {
            setState(() {
              _isSearchActive = !_isSearchActive;
              if (_isSearchActive) {
                _focusNode
                    .requestFocus(); // Focus the text field when search icon is pressed
              } else {
                _focusNode
                    .unfocus(); // Unfocus the text field when close icon is pressed
              }
            });
          },
        ),
        IconButton(
          icon: _isDarkMode
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
          onPressed: () {
            setState(() {
              _isDarkMode = !_isDarkMode;
              // Perform dark/light mode switch logic here
            });
          },
        ),
      ],
      backgroundColor: ColorAssets.bduColor,
    );
  }
}
