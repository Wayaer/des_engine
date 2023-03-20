## A des decryption engine

```dart

void func() {
  const String str = 'your value';
  const String key = 'your key';
  final DES des = DES(DESEngine(), key);
  final String? decoded = des.decodeBase64(str);
  debugPrint(decoded);
}

```