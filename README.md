# Boilerplate Project

BaseImage provides a full range of display formats of images :Network images, SVG images, Local images


## How to Use

**Network Image:**

```dart
import 'package:base_image/base_image.dart';


NetworkImageWidget(
    url:
        "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg",
    height: 200,
    width: double.infinity,
    boxFit: BoxFit.cover,
  )
```

**SVG Image:**


```dart
import 'package:base_image/base_image.dart';


SVGImageWidget(url: "assets/svg_address.svg")
```

**Local Image:**


```dart
import 'package:base_image/base_image.dart';

LocalImageWidget(url: "assets/png_no_image.png", height: 200,
   width: double.infinity,)
```


