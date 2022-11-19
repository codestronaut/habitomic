enum FlavorType { dev, prod }

class FlavorConfig {
  FlavorConfig({this.type = FlavorType.dev}) {
    _instance = this;
  }

  final FlavorType type;
  static FlavorConfig? _instance;
  static FlavorConfig get instance => _instance ?? FlavorConfig();
}
