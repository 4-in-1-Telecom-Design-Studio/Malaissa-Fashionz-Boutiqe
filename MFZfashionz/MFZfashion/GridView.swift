import SwiftUI

struct GridView: View {
    @Binding var filterByBrand: String
    @Binding var filterBySearch: String
    
    let layout: [GridItem]
    let products: [Product]
    
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 32) {
            if !filterBySearch.isEmpty {
                ForEach(products.filter{ $0.name.lowercased().contains(filterBySearch.lowercased()) && $0.brand == filterByBrand || $0.detail.lowercased().contains(filterBySearch.lowercased()) && $0.brand == filterByBrand }, id: \.name) { product in
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            GridCellView(product: product)
                        })
                }
            } else {
                ForEach(products.filter { $0.brand.contains(filterByBrand)}, id: \.name) { product in
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            GridCellView(product: product)
                        })
                }
            }
        }
    }
}

#if DEBUG
struct GridView_Previews: PreviewProvider {
    static var previews: some View {
     
        GridView(filterByBrand: Binding.constant("Pants"),
                 filterBySearch: Binding.constant(""), layout: [
            GridItem(.adaptive(minimum: 180)),
        ], products: products)
    }
}
#endif
