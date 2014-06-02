package grocerypal

class Product {

  String name
  String description
  String stockKeepingUnitNumber

  BigDecimal price
  BigDecimal priceHistory

  static constraints = {
    name(blank: false, nullable: false, unique: true, size: 1..100)
    description(size: 1..255)
    stockKeepingUnitNumber(blank: false, nullable: false, size: 1..255)
    price(min: 0.00, blank: false, nullable: false)
    priceHistory(min:0.00)
  }
}
