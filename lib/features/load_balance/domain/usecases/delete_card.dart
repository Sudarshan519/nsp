import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/load_balance/domain/repositories/load_balance_repositories.dart';

@lazySingleton
class DeleteCard implements Usecase<ApiFailure, Unit, DeleteCardParams> {
  final NetworkInfo networkInfo;
  final LoadBalanceRepositories repository;

  DeleteCard({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(DeleteCardParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.deleteCard(cardId: params.id);
  }
}

class DeleteCardParams {
  DeleteCardParams({
    required this.id,
  });

  final int id;
}
