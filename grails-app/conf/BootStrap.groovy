import grocerypal.Address
import grocerypal.Product

class BootStrap {

    def init = { servletContext ->
      Product milk = new Product(
          name: "AE 2% Milk",
          description: "Iowa milk from Anderson Ericson",
          stockKeepingUnitNumber: "123456",
          price: 3.56,
          priceHistory: 3.56
      )
      Product coke = new Product(
          name: "Coca-Cola",
          description: "Coca-Cola is a carbonated soft drink sold in stores, restaurants, and vending machines throughout the world.",
          stockKeepingUnitNumber: "123457",
          price: 1.54,
          priceHistory: 1.62
      )

      milk.save()
      coke.save()

      Address address = new Address(
          address1: "123 Walmart Lane",
          city: "Des Moines",
          state: "IA",
          zipCode: "50322"
      )

      address.save()


    }
    def destroy = {
    }
}
