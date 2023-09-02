import '../../../202/cache/shared_learn_cache.dart';
import '../model/resource_model.dart';
import '../service/reqres_service.dart';
import '../view/reqres_view.dart';
import '../../../product/service/project_dio.dart';

abstract class ReqresViewModel extends LoadingStateful<ReqResView> with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data> resources = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
