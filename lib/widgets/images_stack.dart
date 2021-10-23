import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
class ImagesStack extends StatelessWidget {
   ImagesStack({
     this.widgets,
     this.fontAndProgressColor,
  });

   List<Widget> widgets;
   Color fontAndProgressColor;
   int widgetCount = 4;

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
      "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      'https://cdn.pixabay.com/photo/2015/03/17/14/05/sparkler-677774_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/03/17/14/05/sparkler-677774_960_720.jpg'
    ];

    List<Widget> widgets = [
      ...images.map<Widget>((img) => Image.network(
        img,
        fit: BoxFit.cover,
      ))
    ];

    return ImageStack.widgets(
      children: widgets,
      widgetRadius: 27,

      ///number of images in UI
      widgetCount: 4,
      widgetBorderWidth: 1,

      ///total number of images even image or number
      totalCount: 6,
      backgroundColor: Colors.white,
      widgetBorderColor: fontAndProgressColor,
    );
  }
}
