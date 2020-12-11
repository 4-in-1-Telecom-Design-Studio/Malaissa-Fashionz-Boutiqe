import SwiftUI

struct SideMenuView: View {
    @Binding var isSideMenuShowing: Bool
    
    var body: some View {
        VStack {
            ForEach(0 ..< 5) { item in
            Label("Label", systemImage: "42.circle")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .onTapGesture {
                    isSideMenuShowing.toggle()
                }
            }
            
            Spacer()
        }
        .padding(.top, 44)
        .frame(width: 200, height: UIScreen.main.bounds.height - 100)
        .background(Color(.systemBackground))
    }
}



#if DEBUG
struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isSideMenuShowing: Binding.constant(true))
    }
}
#endif
