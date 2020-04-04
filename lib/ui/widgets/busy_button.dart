import 'package:flutter/material.dart';
import 'package:flutter_quick_start/localization/app_localizations.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';
import 'package:flutter_quick_start/ui/shared/shared_styles.dart';

class BusyButton extends StatefulWidget {
  final bool busy;
  final String title;
  final Function onPressed;
  final bool enabled;
  final Color buttonColor;
  final Color splashColor;
  final double width;

  const BusyButton({
    @required this.title,
    this.busy = false,
    @required this.onPressed,
    this.width = 150,
    this.buttonColor = primary,
    this.splashColor = secondary,
    this.enabled = true,
  });

  @override
  _BusyButtonState createState() => _BusyButtonState();
}

class _BusyButtonState extends State<BusyButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 40.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      minWidth: widget.width,
      disabledColor: Colors.grey[300],
      buttonColor: widget.buttonColor,
      splashColor: widget.splashColor,
      child: RaisedButton(
        onPressed: widget.onPressed,
        child: widget.busy
            ? Container(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 30.0,
                width: 30.0,
              )
            : Text(
                "${AppLocalizations.of(context).translate(widget.title) ?? widget.title}",
                style: buttonWhiteTextStyle,
              ),
      ),
    );
  }
}
