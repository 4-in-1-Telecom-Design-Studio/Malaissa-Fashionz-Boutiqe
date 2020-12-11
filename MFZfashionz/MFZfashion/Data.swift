struct Product: Hashable {
    let price: Int
    let brand: String
    let name: String
    let detail: String
    let image: String
    var favorited: Bool
    
}


let products = [
Product(price: 100, brand: "mask", name: "Italian Medusa Head Baroque Reusable", detail: "Mask", image: "facemask", favorited: true),
Product(price: 372, brand: "Purse", name: "Lady's Fishbone Bag", detail: "Genuine Leather", image: "Lady's Fishbone Bag", favorited: true),
Product(price: 40, brand: "Pants", name: "Hollow Out Pencil", detail: "Pants", image: "Hollow Out Pencil Pants", favorited: true),
Product(price: 40, brand: "Wigs", name: "Deep Blue Sea", detail: "Wig", image: "Deep Blue Sea", favorited: true),
Product(price: 30, brand: "Sweater", name: "Sweet Cross Over Design", detail: "Sweater", image: "Sweet Cross Over Design", favorited: true),
Product(price: 60, brand: "Pants", name: "Men 3D Denim", detail: "Pants", image: "Men 3D Denim", favorited: true),
Product(price: 60, brand: "Jacket", name: "Designer Windbreaker Casual", detail: "Jacket", image: "Designer Windbreaker Casual", favorited: true),
Product(price: 70, brand: "Wigs", name: "Fashionable Ombre", detail: "Wigs", image: "Fashionable Ombre", favorited: true),
Product(price: 30, brand: "Purse", name: "Chain Strap Crossbody", detail: "Purse", image: "Chain Strap Crossbody", favorited: true),
]
