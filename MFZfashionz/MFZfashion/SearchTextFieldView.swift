import SwiftUI

struct SearchTextFieldView: View {
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 55)
                .foregroundColor(Color(.secondarySystemBackground))
                .padding()
            
            TextField("Shop MFZ", text: $text)
                .padding(.leading)
                .offset(x: 12)
            
            Button(action: {text = "" }, label: {
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(text.isEmpty ? Color(.systemTeal) : .red)
                    .overlay(SearchBarButtonOverlayView(text: $text))
                    .foregroundColor(.white)
                    .padding(.trailing)
                    .offset(x: -5)
            })
        }
        .padding()
    }
}

#if DEBUG
struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
        }
        
    }
}
#endif

struct SearchBarButtonOverlayView: View {
    @Binding var text: String
    var body: some View {
        Group {
            if text.isEmpty {
        Image(systemName: "magnifyingglass").foregroundColor(.white)
                
            } else {
                Image(systemName: "xmark").foregroundColor(.white)
            }
        }
    }
}
