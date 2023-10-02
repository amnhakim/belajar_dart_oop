import 'dart:mirrors';

abstract class CategoryRepository {
  /* Method */
  String id(String id);
  String name(String name);
  int quantity(int quantity);
}

class Repository extends CategoryRepository {
  final String _name;

  Repository(this._name);

  @override
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}
