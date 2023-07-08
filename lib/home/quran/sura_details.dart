import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/home/quran/item_sura_details.dart';
import 'package:islam/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = 'sura details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
List <String>verses =[];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    if(verses.isEmpty){

      loadfile(args.index);
    }
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
              '${args.name}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Container(
            width: width*0.9,
            height: hight*0.9,
            margin: EdgeInsets.only(left:width*0.05,right:width*0.02,bottom:hight*0.09,top: hight*0.04),
            decoration: BoxDecoration(
              color: MyTheme.colorwhight,
              borderRadius: BorderRadius.circular(12),
            ),


            child:
            verses.isEmpty?
                Center(child: CircularProgressIndicator())
            :
            ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: MyTheme.lightprimary,
                  thickness: 2,
                );
              },
              itemBuilder: (context, index) {
              return ItemSuraDetails(text: verses[index],index: index,);
            },
            itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadfile(int index) async{
    String filecontent = await rootBundle.loadString('assets/files/${index+1}.txt') ;

    List<String> lines =filecontent.split('\n');
    verses=lines;
    setState(() {

    });
  }
}

//model
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name,required this.index});
}