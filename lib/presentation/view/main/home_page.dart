import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/whatsapp_theme.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/view/main/chats_page.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/view/main/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: homePageAppBar(),
        body: const SafeArea(
          child: TabBarView(
            children: [
              ChatsPage(),
              StatusPage(),
              Text("Hello world3"),
            ],
          ),
        ),
      ),
    );
  }

  AppBar homePageAppBar() {
    return AppBar(
      backgroundColor: WhatsAppTheme.themeData.primaryColor,
      actions: appBarActions(),
      title: Text(
        "WhatsApp",
        style: TextStyle(color: WhatsAppTheme.themeData.tabBarTheme.labelColor),
      ),
      bottom: tabBarWidget(),
    );
  }

  List<Widget> appBarActions() {
    return [
      InkWell(
        customBorder: const CircleBorder(),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.search,
            color: WhatsAppTheme.themeData.tabBarTheme.labelColor,
          ),
        ),
      ),
      PopupMenuButton(
        color: WhatsAppTheme.themeData.tabBarTheme.labelColor,
        iconColor: WhatsAppTheme.themeData.tabBarTheme.labelColor,
        itemBuilder: (context) => [],
      ),
    ];
  }

  TabBar tabBarWidget() {
    return const TabBar(
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.only(right: 10, left: 10),
      indicatorWeight: 3,
      unselectedLabelColor: Colors.white,
      tabs: [
        Tab(text: "Chats"),
        Tab(text: "Status"),
        Tab(text: "Calls"),
      ],
    );
  }
}
