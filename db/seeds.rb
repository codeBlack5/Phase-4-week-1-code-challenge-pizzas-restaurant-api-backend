Pizza.create([
    {
        name: "Sausage",
        toppings: "Spicy"
    },
    {
        name: "Peperoni Pizza",
        toppings:"Ultimate"
    },
    {
        name: "Mushroom",
        toppings: "Divine"
    },
    {
        name: "Onions",
        toppings: "Yellow"
    }
])
Restaurant.create([
    {
        name: "360 Degrees",
        location: "ABC Plaza"
    },
    {
        name: "Naked Pizza",
        location: "Parklands"
    },
    {
        name: "Mambo Italia",
        location: "Lavington"
    },
    {
        name: "Galitos",
        location: "Valley Arcade"
    }
])

RestaurantPizza.create([
    {
        price: 12,
        restaurant_id: 1,
        pizza_id: 1
    },
    {
        price: 14,
        restaurant_id: 2,
        pizza_id: 2
    },
    {
        price: 13,
        restaurant_id: 3,
        pizza_id: 3
    },
    {
        price: 25,
        restaurant_id: 4,
        pizza_id: 4
    }
])
