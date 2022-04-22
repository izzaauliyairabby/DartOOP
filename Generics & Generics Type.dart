class IntSecurebox {
  final int _data;
  final String _pin;

  IntSecurebox(this._data, this._pin);

  int getData(String pin) => (pin == _pin) ? _data : null;
}