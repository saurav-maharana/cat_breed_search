import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/repository/cat/cat_repository_impl.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mocks.dart';
import '../../test_models/cat/cat_model.dart';
import '../../test_models/cat/remote_cat.dart';

void main() {
  late DomainCatMapper domainCatMapper;
  late CatRemoteService catRemoteService;

  late CatRepository catRepository;

  setUp(() {
    domainCatMapper = MockDomainCatMapper();
    catRemoteService = MockRemoteCatService();

    catRepository = CatRepositoryImpl(
      catRemoteService: catRemoteService,
      domainCatMapper: domainCatMapper,
    );
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
    'When item is searched, then it should return the value',
    () async {
      // Given
      final localRemotData = allCatList;

      when(() => catRemoteService.searchCat(searchTerm: "Sib"))
          .thenAnswer((_) => Future.value((localRemotData)));

      when(() => domainCatMapper.mapList(localRemotData)).thenReturn(allCats);

      // When
      await catRepository.searchCat('Sib');

      // Then
      verify(() => catRemoteService.searchCat(searchTerm: 'Sib')).called(1);
      verify(() => domainCatMapper.mapList(localRemotData)).called(1);
    },
  );
}
