import 'package:chinese_tide_creation/model/feed.dart';
import 'package:chinese_tide_creation/view/feed_card.dart';
import 'package:flutter/material.dart';

class FeedViewModel with ChangeNotifier{
  FeedCardItem generateFeedCardItem(TideFeed feed){
    return FeedCardItem(
      avatarImage: feed.tideUser.avatarUri,
      name: feed.tideUser.name,
      title: feed.title,
      content: feed.shortContent,
      images: feed.previewImages.map((e) => e.uri).toList(),
      onClickedAvatar: (){},
      feedCardType: FeedCardType.values[feed.feedType.index],
      time: feed.createTime.toIso8601String(),
      likeCount: feed.likeCount.toString(),
      commentCount: feed.commentCount.toString(),
      onClickedCard: (){},
      onClickedLike: (){},
      onClickedComment: (){},
      onClickedCollect: (){},
      onClickedShare: (){}
    );
  }
}