package grocerypal

class User {
  String firstName
  String lastName
  String email
  Date dateOfBirth

  static hasOne = [address: Address]
//  static hasMany = [shoppingLists: ShoppingList]

  static constraints = {
    firstName(blank: false, nullable: false, size: 1..50)
    lastName(blank: false, nullable: false, size: 1..50)
    dateOfBirth(blank:false, nullable: false)
    email(blank:false, nullable: false)
  }
}
