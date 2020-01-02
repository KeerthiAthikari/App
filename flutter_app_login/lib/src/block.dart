class Bloc extends Object with Validators {
  final _Username = BehaviorSubject<String>();
  final _Password = BehaviorSubject<String>();

  // retrieve data from stream
  Stream<String> get Username    => _Username.stream.transform(validUsername);
  Stream<String> get Password => _Password.stream.transform(validPassword);
  Stream<bool>   get Login => Observable.combineLatest2(Username, Password, (e, p) => true);

  // add data to stream
  Function(String) get changeUsername    => _Username.sink.add;
  Function(String) get changePassword => _Password.sink.add;

  submit() {
    final validUsername    = _Username.value;
    final validPassword = _Password.value;

    print('$validUsername and $validPassword');
  }

  dispose() {
    _Username.close();
    _Password.close();
  }
}