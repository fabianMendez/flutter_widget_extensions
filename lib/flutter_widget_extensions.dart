library flutter_widget_extensions;

import 'package:flutter/widgets.dart';

extension WidgetExtensions on Widget {
  Widget withConstraints({
    double minWidth = 0.0,
    double maxWidth = double.infinity,
    double minHeight = 0.0,
    double maxHeight = double.infinity,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
      ),
      child: this,
    );
  }

  Widget withAlignment({
    Alignment alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Align(
      child: this,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
  }

  Widget withPadding([EdgeInsets? padding]) {
    return Padding(padding: padding ?? const EdgeInsets.all(20), child: this);
  }

  Widget withMargin(EdgeInsets margin) {
    return Container(margin: margin, child: this);
  }

  Widget withDecoration(Decoration decoration) {
    return DecoratedBox(decoration: decoration, child: this);
  }

  Widget withSize({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  Widget expanded({int flex = 1}) {
    return Expanded(child: this, flex: flex);
  }

  Widget centered({
    double? widthFactor,
    double? heightFactor,
  }) {
    return Center(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }
}
