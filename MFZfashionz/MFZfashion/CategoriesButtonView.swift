import SwiftUI

struct CategoriesButtonView: View {
    @Binding var filterByBrand: String
    let categories: [String]
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self){ category in
             
                    Text(category)
                        .font(.subheadline)
                        .fontWeight(category == filterByBrand ? .bold: .regular)
                        .padding([.horizontal, .bottom])
                        .foregroundColor(category == filterByBrand ? Color(.label) : .secondary)
                        .fixedSize()
                        .onTapGesture {
                            filter(by: category)
                        }
            }
        }
    }
    func filter(by label: String) {
        filterByBrand = label
    }
    
}

#if DEBUG
struct CategoriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesButtonView(filterByBrand: Binding.constant("Pants"), categories: ["Sweater", "Jacket", "Purse", "Wigs", "Pants"])
    }
}
#endif
