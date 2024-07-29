import'package:envied/envied.dart';

part 'config.g.dart';

@envied
class Config{

  @EnviedField(varName: 'APIKEY', obfuscate: true,)
  static final String apiKey = _Config.apiKey;

  @EnviedField(varName: 'TOKEN', obfuscate: true,)
  static final String accessToken = _Config.accessToken;

}