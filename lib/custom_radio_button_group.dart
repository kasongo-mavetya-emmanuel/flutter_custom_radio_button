import 'package:flutter/material.dart';


class CustomRadioButtonGroup extends StatefulWidget {
  const CustomRadioButtonGroup({Key? key}) : super(key: key);

  @override
  State<CustomRadioButtonGroup> createState() => _CustomRadioButtonGroupState();
}

class _CustomRadioButtonGroupState extends State<CustomRadioButtonGroup> {

  int _value=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Radio Button Group',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Column(
        children: [
          CustomRadioButtonListTile(
            value: 1,
            groupValue: _value,
            title: 'Radio Button 1',
            onChanged: (value) {
              setState(() {
                _value=value;
              });
            },),
          CustomRadioButtonListTile(
            value: 2,
            groupValue: _value,
            title: 'Radio Button 2',
            onChanged: (value) {
              setState(() {
                _value=value;
              });
            },),
          CustomRadioButtonListTile(
            value: 3,
            groupValue: _value,
            title: 'Radio Button 3',
            onChanged: (value) {
              setState(() {
                _value=value;
              });
            },),
        ],
      ),
    );
  }
}


class  CustomRadioButtonListTile extends StatelessWidget {
  String title;
  final groupValue;
  final value;
  Function(dynamic) onChanged;
  CustomRadioButtonListTile({Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onChanged(value),
      child: ListTile(
        leading: _customRadioButton(context),
        title: Text(title),
      ),
    );
  }

  Widget _customRadioButton(context){

    bool isSelected=value==groupValue;

    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: isSelected?Theme.of(context).primaryColor:Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Center(
          child: isSelected?Icon(Icons.check,size: 20,color: Colors.white,):SizedBox.shrink()),
    );
  }
}

