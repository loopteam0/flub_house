import 'package:fclub_house/pages/home_details.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            showDialog(context: context, builder: (_) => RoomPage());
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STARTUP CLUB',
                  style: Theme.of(context).textTheme.headline6,
                  maxLines: 1,
                ),
                SizedBox(height: 8),
                Text(
                  'Pitch your startup idea to VCs & top Entrepreneurs',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: CircleAvatar(
                        radius: 17,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset('images/1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: CircleAvatar(
                        radius: 17,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset('images/3.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: CircleAvatar(
                        radius: 17,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset('images/2.png'),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person_rounded, size: 15),
                          Text(' 356'),
                          SizedBox(width: 3),
                          Icon(
                            Icons.mic,
                            size: 15,
                          ),
                          Text(' 7'),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
