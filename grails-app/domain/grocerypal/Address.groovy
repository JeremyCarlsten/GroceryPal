package grocerypal

class Address {

  String address1
  String address2
  String city
  String state
  String zipCode

  static constraints = {
    address1(blank: false, nullable: false, size: 1..100)
    address2(size: 1..100)
    city(blank: false, nullable: false, size: 1..100)
    state(blank: false, nullable: false, size: 1..100)
    zipCode(blank: false, nullable: false, size: 5..9)
  }
}
