import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CategoriesView()
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            Text("Tab Content 1")
                .tabItem { Image(systemName: "bubble.left")
                }.tag(1)
            
            Text("Tab Content 2")
                .tabItem { Image(systemName: "heart")
                }.tag(2)
            
            Text("Tab Content 3")
                .tabItem { Image(systemName: "bag")
                }.tag(3)
            
            Text("Tab Content 4")
                .tabItem { Image(systemName: "person")
                }.tag(4)
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
