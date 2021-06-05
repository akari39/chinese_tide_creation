import 'package:cached_network_image/cached_network_image.dart';
import 'package:chinese_tide_creation/tide_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

enum FeedCardType {
  short,
  article,
  activity
}

class FeedCardItem extends StatelessWidget {
  final String? avatarImage;
  final String name;
  final String? title;
  final String? content;
  final String time;
  final String likeCount;
  final String commentCount;
  final List<String>? images;
  final FeedCardType feedCardType;
  final Function? onClickedAvatar;
  final Function onClickedCard;
  final Function? onClickedLike;
  final Function? onClickedComment;
  final Function? onClickedCollect;
  final Function? onClickedShare;

  const FeedCardItem({Key? key, this.avatarImage, required this.name, this.title, this.content, this.images, this.onClickedAvatar, required this.onClickedCard, this.feedCardType=FeedCardType.article, required this.time, required this.likeCount, required this.commentCount, this.onClickedLike, this.onClickedComment, this.onClickedCollect, this.onClickedShare}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FeedCard(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 12.0),
                    child: FeedCardUserInfo(
                      image: avatarImage,
                      onClickedAvatar: onClickedAvatar,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0, top: 12.0),
                    child: FeedTime(time: time)
                  )
                ],
              ),
              if(feedCardType==FeedCardType.article)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FeedCardBody(
                          title: title,
                          content: content
                        )
                    ),
                    if(images != null)
                      if(images!.isNotEmpty)
                        Container(
                          margin: EdgeInsets.only(left: 6, right: 20, top: 12.0),
                          child: FeedCardImage(
                            isPoster: true,
                            image: images![0],
                          ),
                        )
                  ],
                )
              else if(feedCardType==FeedCardType.activity)
                Row (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(images != null)
                      if(images!.isNotEmpty)
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 12, top: 12.0),
                          child: FeedCardImage(
                              isPoster: true,
                              image: images![0]
                          ),
                        ),
                     Expanded(
                       child: FeedCardBody(
                          title: title,
                          content: content,
                        ),
                     )
                  ]
                )
              else if(feedCardType==FeedCardType.short)
                  FeedCardBody(
                    title: title,
                    content: content
                  ),
                  if(images != null && feedCardType==FeedCardType.short)
                    Container(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: index == 0 ? EdgeInsets.only(left: 16.0, right: 6.0) : index == images!.length-1 ? EdgeInsets.only(left: 6.0, right: 12.0) : EdgeInsets.symmetric(horizontal: 6.0),
                            child: FeedCardImage(
                              image: images![index],
                            ),
                          );
                        }
                      ),
                    ),
              if(feedCardType==FeedCardType.short)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: FeedOperations(
                          onClickedLike: onClickedLike,
                          onClickedComment: onClickedComment,
                          onClickedCollect: onClickedCollect,
                          onClickedShare: onClickedShare,
                          likeCount: likeCount,
                          commentCount: commentCount
                        ),
                      )
                    ],
                  )
              ],
          )
        ),
        onClicked: onClickedCard,
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  final Function onClicked;
  final Widget child;

  const FeedCard({Key? key, required this.onClicked, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(width: 1, color: Colors.black12)
      ),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(5.0),
        onTap: () {onClicked();},
        child: child,
      ),
    );
  }
}

class FeedCardBody extends StatelessWidget {
  final String? title;
  final String? content;

  const FeedCardBody({Key? key, this.title, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(title != null) Container(
            child: Text(title!,
                style: TideFont.cardTitle
            ),
          ),
          if(content != null) Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              content!,
              style: Theme.of(context).textTheme.bodyText1
            ),
          )
        ],
      ),
    );
  }
}

class FeedCardImage extends StatelessWidget {
  final String image;
  final bool isPoster;

  const FeedCardImage({Key? key, required this.image, this.isPoster=false}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isPoster ? 131.6 : 240,
      height: isPoster ? 200 : 240,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0,1),
              blurRadius: 4.0
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(imageUrl: image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
class FeedCardUserInfo extends StatelessWidget {
  final String? image;
  final String name;
  final Function? onClickedAvatar;

  const FeedCardUserInfo({Key? key, this.image, this.onClickedAvatar, this.name="用户名"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: CircleAvatar(
            child: image != null ? CachedNetworkImage(imageUrl: image!, fit: BoxFit.cover)
                : Image(image: AssetImage("avatar_placeholder/avatar_placeholder.png"), fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: PlatformText(
            name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ],
    );
  }
}

class FeedTime extends StatelessWidget {
  final String time;

  const FeedTime({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(time,
      style: Theme.of(context).textTheme.bodyText2
    );
  }
}

class FeedOperations extends StatefulWidget {
  final String likeCount;
  final String commentCount;
  final Function? onClickedLike;
  final Function? onClickedComment;
  final Function? onClickedCollect;
  final Function? onClickedShare;

  const FeedOperations({Key? key, this.onClickedLike, this.onClickedComment, this.onClickedCollect, this.onClickedShare, this.likeCount="0", this.commentCount="0"}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeedOperationState();
}

class _FeedOperationState extends State<FeedOperations>{
  bool likeClicked=false;
  bool collectClicked=false;

  void onLikeClicked() {
    setState(() {
      likeClicked = !likeClicked;
    });
    if(widget.onClickedLike != null) widget.onClickedLike!();
  }

  void onCollectClicked() {
    setState(() {
      collectClicked = !collectClicked;
    });
    if(widget.onClickedCollect != null) widget.onClickedCollect!();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: onLikeClicked,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/icons/like@3x.png', width: 20, height: 20,
                      color: likeClicked ? TideColors.homeRed : Colors.black),
                  onPressed: null
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 24,
                    child: Text( widget.likeCount,
                      style: Theme.of(context).textTheme.bodyText2
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: widget.onClickedComment != null ? () {widget.onClickedComment!();} : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    icon: Image.asset('assets/images/icons/comment@3x.png', width: 20, height: 20),
                    onPressed: null
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 24,
                    child: Text( widget.commentCount,
                        style: Theme.of(context).textTheme.bodyText2
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: IconButton(
              icon: Image.asset('assets/images/icons/collect@3x.png', width: 20, height: 20,
                color: collectClicked ? Theme.of(context).accentColor : Colors.black),
              onPressed: onCollectClicked
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: IconButton(
              icon: Image.asset('assets/images/icons/share@3x.png', width: 20, height: 20),
              onPressed: widget.onClickedShare != null ? () {widget.onClickedShare!();} : null
          ),
        )
      ],
    );
  }

}