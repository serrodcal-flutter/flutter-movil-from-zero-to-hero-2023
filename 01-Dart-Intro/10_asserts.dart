void main(List<String> args) {
  final mySquare = Square(side: 10);
  final modifiedSquare = Square(side: 5);

  modifiedSquare.side = 2;

  print('Area of square: ${mySquare.area}');
  print('Area of modified square: ${modifiedSquare.area}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value < 0) throw 'Value must be greater than 0';
    _side = value;
  }
}
