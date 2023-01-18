import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final bool isCollapsed;
  final IconData? iconData;
  final String? title;
  final int infoCount;
  final IconData? doHaveMoreOptions;
  final VoidCallback? onTap;
  const CustomListTile(
      {Key? key,
        this.isCollapsed = false,
        this.iconData,
        this.title,
        this.infoCount = 0,
        this.doHaveMoreOptions,this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: isCollapsed ? 300 : 80,
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      iconData,
                      color: Colors.white,
                    ),
                    if(!isCollapsed)
                      if (infoCount > 0)
                        Positioned( // badge
                          top: -5,
                          right: -5,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                  ],
                ),
              ),
            ),
            if (isCollapsed)
              const SizedBox(
                width: 10,
              ),
            if (isCollapsed)
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    if (isCollapsed)
                      Expanded(
                        flex: 4, // 4/6
                        child: Text(
                          title!,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    if (isCollapsed)
                      if (infoCount > 0)
                        Expanded(
                          flex: 2, // 2/6
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent),
                            child: Center(
                              child: Text(
                                infoCount.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            if (isCollapsed) const Spacer(),
            if (isCollapsed)
              Expanded(
                child: doHaveMoreOptions != null
                    ? IconButton(
                  icon: Icon(
                    doHaveMoreOptions,
                    color: Colors.white,
                    size: 14,
                  ),
                  onPressed: () {},
                )
                    : const Center(),
              )
          ],
        ),
      ),
    );
  }
}
