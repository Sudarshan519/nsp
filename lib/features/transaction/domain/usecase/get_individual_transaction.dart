import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/repository/transaction_repository.dart';

@lazySingleton
class GetIndivisualTransaction
    implements Usecase<ApiFailure, TransactionItem, int> {
  final TransactionRepository repository;
  final NetworkInfo networkInfo;

  GetIndivisualTransaction({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, TransactionItem>> call(int txnId) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getIndividualTransaction(txnId);
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (data) {
          return Right(data);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
