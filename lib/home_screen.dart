import 'package:flutter/material.dart';
import 'package:islam/home/hadeth/hadeth_tab.dart';
import 'package:islam/home/quran/quran_tab.dart';
import 'package:islam/home/radio/radio_tab.dart';
import 'package:islam/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index){
                selectedindex=index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_quran.png'),
                    ),
                    label: 'Quran'),

                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png'),
                    ),
                    label: 'Hadeth'),

                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_radio.png'),
                    ),
                    label: 'Radio'),

                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_sebha.png'),
                    ),
                    label: 'Sebha'),

                // BottomNavigationBarItem(
                //   icon:Icon(Icons.settings),
                // )
              ],
            ),
          ),
          body: tabs[selectedindex] ,
        ),
      ],
    );
  }
  List<Widget> tabs =[
    QuranTab(),HadethTab(),RadioTab(),SebhaTab()
  ];
}
