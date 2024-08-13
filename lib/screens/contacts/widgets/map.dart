import 'dart:html';
import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

class GMapsHtml extends StatefulWidget {
  final String url;
  const GMapsHtml({super.key, required this.url});
  @override
  _GMapsHtmlState createState() => _GMapsHtmlState();
}

class _GMapsHtmlState extends State<GMapsHtml> {
  late Widget iframeWidget;
  final IFrameElement iframeElement = IFrameElement();
  final PlatformViewRegistry platformViewRegistry = PlatformViewRegistry();
  @override
  void initState() {
    super.initState();
    iframeElement.height = '100%';
    iframeElement.width = '100%';
    iframeElement.src = widget.url;
    iframeElement.style.border = 'none';
    platformViewRegistry.registerViewFactory(
      widget.url,
      (int viewId) => iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLargeScreen(context) ? 100 : 20),
        child: Container(
          
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: shadow,
                border: Border.all(
                    width: 10, color: Color.fromARGB(126, 99, 94, 94))),
            child: HtmlElementView(
              viewType: widget.url,
            )));
  }
}
