import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/remote_config/app_version_information/app_version_information.dart';
import 'package:hadith_flashcard/domain/remote_config/interfaces/i_remote_config_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'remote_config_event.dart';
part 'remote_config_state.dart';
part 'remote_config_bloc.freezed.dart';

@injectable
class RemoteConfigBloc extends Bloc<RemoteConfigEvent, RemoteConfigState> {
  final IRemoteConfigRepository remoteConfigRepository;

  RemoteConfigBloc(
    this.remoteConfigRepository,
  ) : super(
          RemoteConfigState.initial(),
        ) {
    on<RemoteConfigEvent>(
      (event, emit) async {
        await event.map(
          closeDialog: (e) {
            emit(
              state.copyWith(
                optionFailureOrAppVersionInformation: none(),
              ),
            );
          },
          getPackageInfo: (e) async {
            var packageInfo = await PackageInfo.fromPlatform();

            emit(
              state.copyWith(
                packageInfo: packageInfo,
              ),
            );
          },
          getUpdateVersionInfo: (e) async {
            final failureOrSuccess =
                await remoteConfigRepository.getUpdateVersionInfo();

            emit(
              state.copyWith(
                optionFailureOrAppVersionInformation: optionOf(
                  failureOrSuccess,
                ),
              ),
            );
          },
          getAdsStatus: (e) async {
            final failureOrSuccess =
                await remoteConfigRepository.getAdsStatus();

            emit(
              state.copyWith(
                optionFailureOrIsEnabledAds: optionOf(
                  failureOrSuccess,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
