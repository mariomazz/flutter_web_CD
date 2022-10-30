class Env {
  Env._private();
  static final Env _instance = Env._private();
  factory Env() {
    return _instance;
  }

  String get envName {
    return const String.fromEnvironment("ENVIRONMENT", defaultValue: "dev");
  }
}
