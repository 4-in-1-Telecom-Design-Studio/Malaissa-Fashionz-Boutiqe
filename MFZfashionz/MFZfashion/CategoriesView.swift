import SwiftUI

struct CategoriesView: View {
    @State private var filterBySearch = ""
    @State private var isSideMenuShowing = false
    @State private var isAccountViewShowing = false
    @State private var filterByBrand = "Pants"
    let categories =  ["Sweater", "Jacket", "Purse", "Wigs", "Pants"]
    
    let layout = [GridItem(.adaptive(minimum: 180))]
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    SearchTextFieldView(text: $filterBySearch)
                    HeaderView(label: "Categories")
                    CategoriesButtonView(filterByBrand: $filterByBrand, categories: categories)
                    GridView(filterByBrand: $filterByBrand, filterBySearch: $filterBySearch, layout: layout, products: products)
                    
                        
                }
                
                .navigationBarItems(
                    leading: NavigationBarItemView(image:
                        "line.horizontal.3", isSideMenuShowing:
                            $isSideMenuShowing, isAccountViewShowing:
                            $isAccountViewShowing),
                    trailing: NavigationBarItemView(image: "person.crop.circle",isSideMenuShowing:
                            $isSideMenuShowing, isAccountViewShowing:
                            $isAccountViewShowing))
                .sheet(isPresented: $isAccountViewShowing) {
                    AccountView(isAccountViewShowing: $isAccountViewShowing)
                }
            }
            if isSideMenuShowing {
                HStack {
                    SideMenuView(isSideMenuShowing: $isSideMenuShowing)
                        .offset(x: isSideMenuShowing ? 0 : -200)
                    
                    Spacer()
                }
            } else {
                EmptyView()
            }
        }
    }
}


#if DEBUG
struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            
    }
}
#endif
