import 'package:encrypt/encrypt.dart';

class EncryptionHelper {
  static final key = Key.fromLength(32);
  static final iv = IV.fromLength(16);

  static final encrypter = Encrypter(AES(key));

  static String encrypt(String plainText) {
    return encrypter.encrypt(plainText, iv: iv).base64;
  }

  static String decrypt(String encryptedText) {
    final encrypted = Encrypted.fromBase64(encryptedText);
    return encrypter.decrypt(encrypted, iv: iv);
  }
}
