import '../model/resource_model.dart';
import '../service/reqres_service.dart';

class ReqReqProvider {
  final IReqresService reqresService;
  List<Data> resources = [];

  ReqReqProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
  }
}
