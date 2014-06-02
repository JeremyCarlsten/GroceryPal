package grocerypal

class Store {

  String name

  static hasMany = [products: Product, locations: Location]


    static constraints = {
      name(blank: false, nullable: false, unique: true, size: 1..50)
      products(nullable: false)
      locations(nullable: false)
    }
}
