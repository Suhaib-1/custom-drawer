import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
    this.isCollapsed = false,
  }) : super(key: key);
  final bool isCollapsed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 60,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 30,
          ),
          if (isCollapsed)
            const SizedBox(
              width: 20,
            ),
          if (isCollapsed)
            const Expanded(
                flex: 3,
                child: Text(
                  'Custom Drawer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          // if (isCollapsed) Spacer(),
          if (isCollapsed)
            Expanded(
              flex: 1,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 18,
                    )))
        ],
      ),
    );
  }
}
