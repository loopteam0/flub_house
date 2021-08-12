import 'package:fclub_house/pages/room_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15).copyWith(
            top: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor,
                ),
                child: Icon(
                  Icons.calendar_today_rounded,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(10),
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                label: Text('Start Room'),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor,
                ),
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            bottom: 100,
          ),
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'Good Moring,\nBernice',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('images/2.png'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: emojis.length,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(30),
                          primary: Color.fromRGBO(53, 22, 22, 1),
                          onPrimary: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      icon: Text(emojis[index]),
                      label: Text('Design'),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Text('Upcoming'),
            ),
            Container(
              child: Card(
                color: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 2,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 145, 129, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('10:00 - 20:00'),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Design Talks and Chill')
                            ],
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: -45,
                        child: Icon(Icons.chevron_left_rounded),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Text('Happening Now'),
            ),
            RoomCard(),
            RoomCard(),
            RoomCard(),
            RoomCard(),
            RoomCard(),
            RoomCard(),
            RoomCard(),
          ],
        ),
      ),
    );
  }
}

List<String> emojis = ['🎮', '🏀', '🕹', '🎲', '🎿', '🎾', '🎏', '⛵', '🎪'];
