import 'package:auto_injector/auto_injector.dart';
import 'package:yuno/app/core/services/game_service.dart';

import 'app/data/mocks/mock_game_repository.dart';
import 'app/interactor/repositories/game_repository.dart';

final injector = AutoInjector(
  on: (i) {
    i.addSingleton(GameService.new);
    i.addSingleton<GameRepository>(MockGameRepository.new);
  },
);
