/*import 'package:flutter/material.dart';

class FormComponent extends StatefulWidget {
  FormComponent({required this.title, required this.controller, this.type = 0});
  var title = '';
  var controller = TextEditingController();

  ///si type =0 => text, si type =1 => email,si type =2 => password
  int type = 0;

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  bool visible = true;
  bool error = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: TextField(
            obscureText: (widget.type == 2) ? visible : false,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (val) {
              setState(() {
                print(val);
                error = new Verify().verifyForm(widget.type, val);
              });
            },
            controller: widget.controller,
            decoration: InputDecoration(
                errorText: (widget.type == 1)
                    ? error
                        ? 'E-mail incorrect'
                        : null
                    : (widget.type == 3)
                        ? error
                            ? 'Numero incorrect'
                            : null
                        : (widget.type == 0)
                            ? error
                                ? 'Text incorrect'
                                : null
                            : null,
                suffixIcon: (widget.type == 2)
                    ? InkWell(
                        child: Icon(
                          (visible)
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          color: Colors.black45,
                        ),
                        onTap: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                      )
                    : const SizedBox(),
                hintText: this.widget.title,
                contentPadding: EdgeInsets.only(left: 0)),
          )),
  
    );
  }
}*/
