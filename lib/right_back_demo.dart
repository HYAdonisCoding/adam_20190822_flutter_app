import 'package:flutter/cupertino.dart';

class RightBackDemo extends StatelessWidget {

  var pageIndex;
  RightBackDemo(this.pageIndex);

  @override
  Widget build(BuildContext context) {

    
    
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(previousPageTitle:'Page - ${pageIndex-1}', middle: Text('Page - $pageIndex'),),
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context){
                  return RightBackDemo(pageIndex+1);
                })
              );
            },
          ),
        ),
      ),
      
    );
  }
}