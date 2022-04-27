import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
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
    // Given
    final remoteCatData = remoteCat1;

    // When
    final result = domainCatMapper.map(remoteCatData);

    // Then
    expect(result, isA<Cat>());
    expect(result.id, remoteCatData.id);
    expect(result.name, remoteCatData.name);
    expect(result.origin, remoteCatData.origin);
  });

  test('Given List of Cat, and map is called; then Cat list is returned',
      () async {
    // Given

    final remoteCatList = allCatList;

    // Where

    final result = domainCatMapper.mapList(remoteCatList);

    // Then

    expect(result, isA<List<Cat>>());
  });
}
