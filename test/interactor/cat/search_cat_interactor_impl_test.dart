import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/repository/cat/cat_repository_impl.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../exception/test_exceptions.dart';
import '../../mocks/mocks.dart';
import '../../test_models/cat/cat_model.dart';
import '../../test_models/cat/remote_cat.dart';

void main() {
  late CatRepository catRepository;
  late CatRemoteService catRemoteService;
  late DomainCatMapper domainCatMapper;

  setUp(() {
    catRemoteService = MockRemoteCatService();
    domainCatMapper = MockDomainCatMapper();

    catRepository = CatRepositoryImpl(
      catRemoteService: catRemoteService,
      domainCatMapper: domainCatMapper,
    );
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
      'When a parcular cat is searched, and is avaibale in the list the details should show up. Also, Future<List<Cat>> should be returned for every call.',
      () async {
    final localCatData = allCatList;
    final singleCatData = singleCatList;

    // Given
    when(() => catRemoteService.searchCat(searchTerm: 'Sib'))
        .thenAnswer((_) => Future.value(localCatData));

    when(() => domainCatMapper.mapList(localCatData)).thenReturn(singleCatData);

    // When
    final result = await catRepository.searchCat('Sib');

    // Then
    verify(() => catRemoteService.searchCat(searchTerm: 'Sib')).called(1);
    verify(() => domainCatMapper.mapList(localCatData)).called(1);

    expect(result.length, localCatData.length - 1);
    expect(result, singleCatData);
  });

  test(
      'when cat search throws error, show same error when the list is called to show.',
      () async {
    final testException = TestException();

    // Given
    when(() => catRemoteService.searchCat(searchTerm: 'ABC'))
        .thenThrow(testException);

    // When
    expect(
      () async {
        await catRepository.searchCat('ABC');
      },
      throwsA(testException),
    );

    // Then
    verify(() => catRemoteService.searchCat(searchTerm: 'ABC')).called(1);
    verifyZeroInteractions(domainCatMapper);
  });
}
