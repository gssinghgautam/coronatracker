import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/services/common/dialog_service.dart';
import 'package:flutter_quick_start/services/common/navigation_service.dart';
import 'package:flutter_quick_start/services/repository/repository_service.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';

abstract class BaseService{
  final _repository = locator<RepositoryService>();
  final _dialogService = locator<DialogService>();
  final _storageService = locator<StorageService>();
  final _navigationService = locator<NavigationService>();


}