import 'package:flutter/material.dart';
import 'package:learn_app/ui/navigation/main_navigation.dart';
import 'package:learn_app/ui/widgets/menu_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              floating: true,
              pinned: true,
              delegate: CustomSliverDelegate(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[850]!,
                  ),
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: _AvatarWidget(),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          SizedBox(height: 10),
                          _UserNameWidget(),
                          SizedBox(height: 10),
                          _UserPhoneWidget(),
                          SizedBox(height: 10),
                          _UserNickNameWidget(),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  MenuWidget(
                    items: getFirstMenu(context),
                  ),
                  const SizedBox(height: 30),
                  MenuWidget(
                    items: getSecondMenu(context),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ])),
          ],
        ),
      ),
    );
  }

  List<MenuWidgetItem> getFirstMenu(BuildContext context) => [
        MenuWidgetItem(
            leading: const Icon(Icons.favorite),
            title: const Text('Избранное'),
            onTap: () {
              Navigator.of(context).pushNamed(NavigationRouts.favorites);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.call),
            title: const Text('Звонки'),
            onTap: () {
              Navigator.of(context).pushNamed(NavigationRouts.calls);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.computer),
            title: const Text('Устройства'),
            onTap: () {
              Navigator.of(context).pushNamed(NavigationRouts.devices);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.folder),
            title: const Text('Папка с чатами'),
            onTap: () {
              Navigator.of(context).pushNamed(NavigationRouts.folderWithChats);
            }),
      ];

  List<MenuWidgetItem> getSecondMenu(BuildContext context) => [
        MenuWidgetItem(
            leading: const Icon(Icons.notifications),
            title: const Text('Уведомления и звуки'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NavigationRouts.placeholderScreen);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Конфидицальность'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NavigationRouts.placeholderScreen);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.date_range),
            title: const Text('Данные и память'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NavigationRouts.placeholderScreen);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.brush),
            title: const Text('Оформление'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NavigationRouts.placeholderScreen);
            }),
        MenuWidgetItem(
            leading: const Icon(Icons.language),
            title: const Text('Язык'),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(NavigationRouts.placeholderScreen);
            })
      ];
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@JonFir',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  CustomSliverDelegate({required this.child});

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '324234',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'test',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage("asset_image/learn_app.jpg"),
      );
}
