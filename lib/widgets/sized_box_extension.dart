import 'package:flutter/material.dart';

extension SpaceSymmetric on num {
  SizedBox get spaceV => SizedBox(
    height: toDouble(),
  );
  SizedBox get spaceH => SizedBox(
    width: toDouble(),
  );
}


// ya wala jo code ha na ys sized box sa hun jo space dta ha us ka lia use hota ha isa save karn lana
//ya aisa call hota ha bus