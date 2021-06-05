import 'package:chinese_tide_creation/model/feed.dart';
import 'package:flutter/material.dart';

import 'feed_card.dart';

class FollowingComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FollowingComponentState();

}

class _FollowingComponentState extends State<FollowingComponent>{
  List<TideFeed> tideFeeds = [];

  @override
  void initState() {
    super.initState();
    tideFeeds = TideFeed.test();
  }

  FeedCardItem generateFeedCard(TideFeed feed) {
    String time;
    DateTime dateTimeNow = DateTime.now();
    if(feed.createTime.year == dateTimeNow.year){
      if(feed.createTime.month == dateTimeNow.month){
        if(feed.createTime.day == dateTimeNow.day){
          if(feed.createTime.hour == dateTimeNow.hour){
            if(feed.createTime.minute == dateTimeNow.minute){
              if(feed.createTime.second == dateTimeNow.second) {
                time = "现在";
              } else {
                time = (dateTimeNow.second - feed.createTime.second).toStringAsFixed(0) + "秒前";
              }
            } else {
              time = (dateTimeNow.minute - feed.createTime.minute).toStringAsFixed(0) + "分前";
            }
          } else {
            time = (dateTimeNow.hour - feed.createTime.hour).toStringAsFixed(0) + "小时前";
          }
        } else {
          time = (dateTimeNow.day - feed.createTime.day).toStringAsFixed(0) + "天前";
        }
      } else {
        time = feed.createTime.year.toString() + "-" +
            feed.createTime.month.toString() + "-" +
            feed.createTime.day.toString();
      }
    } else {
      time = feed.createTime.year.toString() + "-" +
          feed.createTime.month.toString() + "-" +
          feed.createTime.day.toString();
    }

    return FeedCardItem(
        avatarImage: feed.tideUser.avatarUri,
        name: feed.tideUser.name,
        title: feed.title,
        content: feed.shortContent,
        images: feed.previewImages.map((e) => e.uri).toList(),
        onClickedAvatar: (){},
        feedCardType: FeedCardType.values[feed.feedType.index],
        time: time,
        likeCount: feed.likeCount.toString(),
        commentCount: feed.commentCount.toString(),
        onClickedCard: (){},
        onClickedLike: (){},
        onClickedComment: (){},
        onClickedCollect: (){},
        onClickedShare: (){}
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return generateFeedCard(tideFeeds[index]);
        },
        itemCount: tideFeeds.length,
      ),
    );
  }
}