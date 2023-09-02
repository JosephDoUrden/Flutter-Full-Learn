import '../../303/reqrest_resource/model/resource_model.dart';

class ResorceContext {
  ResourceModel? model;

  void saveModel(ResourceModel? model) {
    this.model = model;
  }

  void clear() {
    model = null;
  }
}
