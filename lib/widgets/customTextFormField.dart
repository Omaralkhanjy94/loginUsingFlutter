import 'package:estorelogin/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextInputType? keyboardType;
  TextEditingController? textController = TextEditingController();
  String? label;
  CustomTextFormField({Key? key, this.keyboardType,this.textController,this.label}) : super(key: key);
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    Widget myTool = const Text("");

    if (keyboardType!=null) {
      if(keyboardType == TextInputType.visiblePassword){
        obscure=true;
      }
      myTool= Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(label!,
              style: const TextStyle(fontSize: 12,color: textColor2),),
          ),
          TextFormField(
            keyboardType:keyboardType!,
            obscureText: obscure,
            // controller: ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              labelText: label!,
              fillColor: Colors.white,
              filled: true,
            ),
            style: const TextStyle(fontSize: 16),),
        ],
      );
    }else if(textController!=null){
      myTool = Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(label!,
              style: const TextStyle(fontSize: 12,color: textColor2),),
          ),

          TextFormField(
            // keyboardType:keyboardType!,

            controller:textController! ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              labelText: label!,
              fillColor: Colors.white,
              filled: true,
            ),
            style: const TextStyle(fontSize: 16),),
        ],
      );
    }else{
      myTool = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(label!,
              style: const TextStyle(fontSize: 12,color: textColor2),),
          ),

          TextFormField(
            //Without keyboardType and controller
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              labelText: label!,
              fillColor: Colors.white,
              filled: true,
            ),
            style: const TextStyle(fontSize: 16),),
        ],
      );
    }

    return myTool;
  }
}
