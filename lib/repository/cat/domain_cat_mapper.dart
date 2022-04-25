import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/foundation/mapper/mapper.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

abstract class DomainCatMapper extends Mapper<RemoteCat, Cat> {
  // RemoteCat mapRemoteCat(RemoteCat from);

  // List<RemoteCat> mapRemoteCatList(List<RemoteCat> from) =>
  //     from.map((e) => mapRemoteCat(e)).toList();
}

class DomainCatMapperImpl extends DomainCatMapper {
  @override
  Cat map(RemoteCat from) {
    return Cat(
      id: from.id,
      name: from.name,
      origin: from.origin,
    );
  }
}
