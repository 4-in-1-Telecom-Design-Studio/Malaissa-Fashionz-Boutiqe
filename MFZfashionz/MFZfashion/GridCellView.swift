import SwiftUI

struct GridCellView: View {
    let product: Product
    
    var body: some View {
        VStack {
            HStack {
                Text("$\(product.price)")
                    .font(.body)
                    .bold()
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                })
            }
            .padding([.top, .horizontal])
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(product.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text(product.detail)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .bottom])
        }
        .frame(width: 180, height: 180)
        .background(Color(.secondarySystemBackground))
        .foregroundColor(Color(.label))
        .cornerRadius(18)
    }
}

#if DEBUG
struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridCellView(product: Product(price: 100, brand: "mask", name: "Italian Medusa Head Baroque Reusable", detail: "Mask", image: "facemask", favorited: true))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            GridCellView(product: Product(price: 100, brand: "mask", name: "Italian Medusa Head Baroque Reusable", detail: "Mask", image: "facemask", favorited: true))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
        }
    }
}
#endif
