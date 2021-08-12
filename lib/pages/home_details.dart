import 'dart:math';

import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        leading: IconButton(
          icon: RotatedBox(
            quarterTurns: -45,
            child: Icon(Icons.chevron_left_rounded),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text('Dating Game...'),
      ),
      bottomNavigationBar: Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20).copyWith(bottom: 100, top: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Type any thought here',
                                filled: true,
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                          icon: Icon(Icons.send),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.all(15),
                          primary: Theme.of(context).cardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {},
                      icon: Text('✋'),
                      label: Text('Leave quietly'),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Text('✋'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset('images/3.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (_, i) => AvatarWidget(
          index: i,
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  final int index;
  const AvatarWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.accents.random<MaterialAccentColor>(),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image.asset('images/${index + 1}.png'),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text('🎉'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.mic_off_rounded,
                    size: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text('Preson $index')
      ],
    );
  }
}

extension ListExt on List {
  T random<T>() => this.elementAt(Random().nextInt(this.length));
}
