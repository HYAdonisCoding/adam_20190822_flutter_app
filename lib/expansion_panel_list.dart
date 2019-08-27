import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> mList;
  List<ExpandStateBean> expanStateList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mList = new List();
    expanStateList = new List();

    for (int i = 0; i < 10 ; i++){
      mList.add(i);
      expanStateList.add(ExpandStateBean(false, i));
    }
  }
  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expanStateList.forEach((item){
        if (item.index == index) {
          item.isOpen = !item.isOpen;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansion Panel List'),),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(headerBuilder: (context, isExpanded){
              return ListTile(
                title: Text('This is No.${index+1}'),
              );
            },
            body: ListTile(
              title: Text('expansion no.${index+1}'),
            ),
            isExpanded: expanStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
}


class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.isOpen, this.index);
}