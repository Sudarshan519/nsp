import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/repository/transaction_repository.dart';

@lazySingleton
class GetTransactions
    implements Usecase<ApiFailure, List<TransactionItem>, GetTransactionParam> {
  final TransactionRepository repository;
  final NetworkInfo networkInfo;

  GetTransactions({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<TransactionItem>>> call(
      GetTransactionParam params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getTransaction(params);
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (data) {
          return Right(data.statements ?? []);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetTransactionParam {
  // -from_date
  // -to_date
  // -status
  // -transaction_type

  final String page;
  final String fromDate;
  final String toDate;

  GetTransactionParam({
    required this.page,
    required this.fromDate,
    required this.toDate,
  });
}
