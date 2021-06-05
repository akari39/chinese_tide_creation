import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TideAppBar extends StatelessWidget{
  final TabController tabController;
  final List<Widget> tabs;
  final bool hasBanner;

  const TideAppBar({Key? key, required this.tabController, required this.tabs, required this.hasBanner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      brightness: Brightness.dark,
      backgroundColor: Colors.transparent,
      expandedHeight: hasBanner ? 217.0 : 58.0,
      collapsedHeight: 58.0,
      elevation: 0,
      title: TabBar(
          labelPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          isScrollable: true,
          controller: tabController,
          tabs: tabs,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 8.0),
          indicator: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage("assets/images/tab_indicator/cloud@3x.png")
              )
          )
      ),
      flexibleSpace: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: Image.asset("assets/images/background/background@3x.png", fit: BoxFit.cover, alignment: Alignment.bottomCenter)),
          Positioned.fill(child: Center(child: Text("")))
        ],
      ),
      actions: [
        PlatformIconButton(icon: Icon(PlatformIcons(context).search), onPressed: (){})
      ],
    );
  }
}