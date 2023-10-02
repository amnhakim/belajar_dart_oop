class Category {
  String id;
  String name;

  Category(this.id, this.name);

  /* Override Equals Method */
  @override
  bool operator ==(Object other) {
    if (other is Category) {
      if (id != other.id && name != other.name) {
        return false;
      }
      return true;
    } else {
      return false;
    }
  }

  /* Override HashCode */
  @override
  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}
