import 'dart:async';

class Validators {
  final validUsername = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) {
        if (email.contains('@')) {
          sink.add(email);
        } else {
          sink.addError('Enter a valid email');
        }
      }
  );

  final validPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
        if (password.length >= 8) {
          sink.add(password);
        } else {
          sink.addError('Password must be at least 8 characters');
        }
      }
  );
}