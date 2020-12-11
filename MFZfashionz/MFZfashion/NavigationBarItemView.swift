import SwiftUI

struct NavigationBarItemView: View {
    let image: String
    @Binding var isSideMenuShowing: Bool
    @Binding var isAccountViewShowing: Bool

    var body: some View {
        Button(action:  { showOrHideView() }, label: {
            Image(systemName: image)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(.label))
        })
        
    }
        func showOrHideView() {
            if image == "person.crop.circle" {
                isAccountViewShowing.toggle()
            } else {
                isSideMenuShowing.toggle()
        }
    }
}


#if DEBUG
struct NavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemView(image: "person.crop.circle",
            isSideMenuShowing: Binding.constant(true),
            isAccountViewShowing: Binding.constant(true))
    }
}
#endif
