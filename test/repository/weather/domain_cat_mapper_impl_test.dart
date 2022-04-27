import 'package:drift/remote.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_models/cat/remote_cat.dart';

void main() {
  late DomainCatMapper domainCatMapper;

  setUp(() {
    domainCatMapper = DomainCatMapperImpl();
  });

  tearDown(() {
    resetMocktailState();
  });

  test('Given remote cat, when map remote cat is called, then CAT is returned',
      () async {
    final remoteCatData = remoteCat1;

    final result = domainCatMapper.map(remoteCatData);

    expect(result, isA<Cat>());
    expect(result.id, remoteCatData.id);
    expect(result.name, remoteCatData.name);
    expect(result.origin, remoteCatData.origin);
  });
}
