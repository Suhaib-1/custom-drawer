import 'package:flutter/material.dart';

class CustomUserInfo extends StatefulWidget {
  const CustomUserInfo({Key? key, this.isCollapse = false}) : super(key: key);
  final bool isCollapse;

  @override
  State<CustomUserInfo> createState() => _CustomUserInfoState();
}

class _CustomUserInfoState extends State<CustomUserInfo> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: widget.isCollapse ? 500: 50,
        height: widget.isCollapse ? 70 : 100,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(40),
        ),
        child: widget.isCollapse
            ? Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://t3.ftcdn.net/jpg/02/99/21/98/360_F_299219888_2E7GbJyosu0UwAzSGrpIxS0BrmnTCdo4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Username',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.clip,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              'Member',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ))
                          ],
                        )),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.exit_to_app_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Column(
                children: [
                  Expanded(flex: 1,
                      child: Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(top: 10),
                        child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        'https://t3.ftcdn.net/jpg/02/99/21/98/360_F_299219888_2E7GbJyosu0UwAzSGrpIxS0BrmnTCdo4.jpg',
                        fit: BoxFit.cover,
                    ),
                  ),
                      )),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ));
  }
}
