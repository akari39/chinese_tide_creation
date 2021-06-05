import 'package:chinese_tide_creation/view/following.dart';
import 'package:chinese_tide_creation/view/recommend.dart';
import 'package:chinese_tide_creation/view/tide_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeComponentState();

}

class _HomeComponentState extends State<HomeComponent> with TickerProviderStateMixin{
  TabController? _tabController;
  int _selectedTab = 1;
  bool hasBanner = true;

  List<String> menu = ["关注","推荐"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController?.index=_selectedTab;

    _tabController?.addListener(() {
      setState(() {
        _selectedTab = _tabController!.index;
        if(_tabController!.index == 0) {
          hasBanner = false;
        } else {
          hasBanner = true;
        }
      });
    });
  }

  List<Widget> get tabs {
    List<Widget> mTabs = [];
    menu.forEach((element) {
      mTabs.add(
        PlatformText(menu[menu.indexOf(element)],
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: _selectedTab == menu.indexOf(element) ? FontWeight.bold : FontWeight.normal
          ),
        )
      );
    });
    return mTabs;
  }

  @override void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
            TideAppBar(
              hasBanner: hasBanner,
              tabController: _tabController!,
              tabs: tabs
          )
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: [
          FollowingComponent(),
          RecommendComponent()
        ],
      )
    );
  }

}