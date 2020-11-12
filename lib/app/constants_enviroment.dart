enum Environment { DEV, STAGING ,PRODUCTION}

class Constants {

  static Map<String, dynamic> _config;

  static void setEnvironment(Environment environment) {
    switch (environment) {
      case Environment.DEV:
        _config = ConfigAPI.dev;
        break;
      case Environment.PRODUCTION:
        _config = ConfigAPI.production;
        break;
      default:
        _config = ConfigAPI.dev;
        break;
    }
  }

  static String get serverAPI {
    return _config[ConfigAPI.SERVER_API] as String;
  }

  static String get serverHTTPAPI {
    return _config[ConfigAPI.SERVER_HTTP_API] as String;
  }

  static String get secret {
    return _config[ConfigAPI.SECRET] as String;
  }
}

class ConfigAPI {

  static const String SERVER_API = 'SERVER_API';
  static const String SERVER_HTTP_API = 'SERVER_HTTP_API';
  static const String SECRET = 'SECRET';

  static Map<String, dynamic> dev = <String, dynamic> {
    SERVER_API: 'https://svc.micas.in/api/',
    SERVER_HTTP_API: 'svc.micas.in',
    SECRET: 'U3fn23ZrZCE5aTk3CiHX4Em2'
  };

  static Map<String, dynamic> production = <String, dynamic> {
    SERVER_API: 'https://svc.micas.in/api/',
    SERVER_HTTP_API: 'svc.micas.in',
    SECRET: 'U3fn23ZrZCE5aTk3CiHX4Em2'
  };
}