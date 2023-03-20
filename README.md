## A des decryption engine

```dart

void func() {
  const String str = 'CfAmqOiIYz6NkH0Te32Uz6obXELPspz1pDj+oOUNNbsmptHP0Jwvdg==';
  const String key = 'your key';
  final DES des = DES(DESEngine(), key);
  final String? decoded = des.decodeBase64(str);
  debugPrint(decoded);
}

```