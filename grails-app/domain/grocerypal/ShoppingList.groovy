package grocerypal

class ShoppingList {
  String name
  String description

  static hasMany = [products: Product]

  static constraints = {
    name(blank: false, nullable: false, size: 1..100)
    description(size: 1..255)
  }
}
