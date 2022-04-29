import 'package:flutter_template/domain/entity/cat/cat.dart';

final cat1 = Cat(
  id: 'sib',
  name: 'Siberia',
  origin: 'Russia',
);

final cat2 = Cat(
  id: "ger",
  name: "Toyger",
  origin: "United States",
);

List<Cat> allCats = [
  cat1,
  cat2,
];
