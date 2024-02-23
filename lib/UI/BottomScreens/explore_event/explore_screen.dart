
import 'package:crwd/UI/BottomScreens/explore_event/explore_details.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

enum Swipe { left, right, none }

class _SearchScreenState extends State<SearchScreen> {

  List<Profile> dragabbleItems = [
    const Profile(
        name: 'nitin',
        distance: '10 miles away',
        imageAsset: 'assets/images/image_3.png'),
    const Profile(
        name: 'ved',
        distance: '10 miles away',
        imageAsset: 'assets/images/image_3.png'),
    const Profile(
        name: 'qwerty',
        distance: '10 miles away',
        imageAsset: 'assets/images/image_3.png'),
    const Profile(
        name: 'qwew',
        distance: '10 miles away',
        imageAsset: 'assets/images/image_3.png'),
    const Profile(
        name: 'qwew',
        distance: '10 miles away',
        imageAsset: 'assets/images/image_3.png'),
  ];

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
          title: const Text('Explore Event'),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ValueListenableBuilder(
                valueListenable: swipeNotifier,
                builder: (context, swipe, _) =>
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: List.generate(dragabbleItems.length, (index) {
                        return DragWidget(
                          profile: dragabbleItems[index],
                          index: index,
                          swipeNotifier: swipeNotifier,
                        );
                      }),
                    ),
              ),
            ),
            Positioned(
              left: 0,
              child: DragTarget<int>(
                builder: (BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,) {
                  return IgnorePointer(
                    child: Container(
                      height: 700.0,
                      width: 80.0,
                      color: Colors.transparent,
                    ),
                  );
                },
                onAccept: (int index) {
                  setState(() {
                    dragabbleItems.removeAt(index);
                  });
                },
              ),
            ),
            Positioned(
              right: 0,
              child: DragTarget<int>(
                builder: (BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,) {
                  return IgnorePointer(
                    child: Container(
                      height: 700.0,
                      width: 80.0,
                      color: Colors.transparent,
                    ),
                  );
                },
                onAccept: (int index) {
                  setState(() {
                    dragabbleItems.removeAt(index);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  class Profile {
  const Profile({
  required this.name,
  required this.distance,
  required this.imageAsset,
  });
  final String name;
  final String distance;
  final String imageAsset;
  }





class DragWidget extends StatefulWidget {
  const DragWidget({
    Key? key,
    required this.profile,
    required this.index, required ValueNotifier<Swipe> swipeNotifier,
  }) : super(key: key);
  final Profile profile;
  final int index;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        // Data is the value this Draggable stores.
        data: widget.index,
        feedback: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) {
              return RotationTransition(
                turns: swipe != Swipe.none
                    ? swipe == Swipe.left
                    ? const AlwaysStoppedAnimation(-15 / 360)
                    : const AlwaysStoppedAnimation(15 / 360)
                    : const AlwaysStoppedAnimation(0),
                child: Stack(
                  children: [
                    ProfileCard(profile: widget.profile),
                    swipe != Swipe.none
                        ? swipe == Swipe.right
                        ? Positioned(
                      top: 40,
                      left: 20,
                      child: Transform.rotate(
                        angle: 12,
                        child: TagWidget(
                          text: 'LIKE',
                          color: Colors.green[400]!,
                        ),
                      ),
                    )
                        : Positioned(
                      top: 50,
                      right: 24,
                      child: Transform.rotate(
                        angle: -12,
                        child: TagWidget(
                          text: 'DISLIKE',
                          color: Colors.red[400]!,
                        ),
                      ),
                    )
                        : const SizedBox.shrink(),
                  ],
                ),
              );
            },
          ),
        ),
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          // When Draggable widget is dragged right
          if (dragUpdateDetails.delta.dx > 0 &&
              dragUpdateDetails.globalPosition.dx >
                  MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.right;
          }
          // When Draggable widget is dragged left
          if (dragUpdateDetails.delta.dx < 0 &&
              dragUpdateDetails.globalPosition.dx <
                  MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.left;
          }
        },
        onDragEnd: (drag) {
          swipeNotifier.value = Swipe.none;
        },

        childWhenDragging: Container(
          color: Colors.transparent,
        ),

        child: ProfileCard(profile: widget.profile),
      ),
    );
  }
}



class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ExploreDetail()));
      },
      child: Container(
        height: 600,
        width: 340,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  profile.imageAsset,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 80,
                width: 340,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        profile.name,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        profile.distance,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class TagWidget extends StatelessWidget {
  const TagWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: color,
            width: 4,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 36,
        ),
      ),
    );
  }
}