import 'package:flutter/material.dart';

import 'custom_loading_progress.dart';

class CustomButtonElevated extends StatefulWidget {
  final String text;
  //final void Function()? onPressed;
  final bool loading;

  const CustomButtonElevated({
    Key? key,
    required this.text,
    // required this.onPressed,
    this.loading = false,
  }) : super(key: key);

  @override
  State<CustomButtonElevated> createState() => _CustomButtonElevatedState();
}

class _CustomButtonElevatedState extends State<CustomButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 54,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: /*  widget.loading
                ?  */
                () {}
            /*  : () {
                    setState(() {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      currentFocus.unfocus();
                      widget.onPressed!();
                    });
                  } */
            ,
            child: widget.loading
                ? const CustomLoadingProgress()
                : Text(widget.text)));
  }
}
