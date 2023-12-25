import SwiftUI

struct MyButton: View {
    var action: () -> Void
    var text: String
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: 17, weight: .medium, design: .default))
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color(red: 38/255, green: 136/255, blue: 235/255))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct Screen_1_1: View {
    @State private var url: String = "vk.com"

    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("QR-код")
                    .font(.system(size: 21, weight: .bold, design: .default))
                TextField("vk.com", text: $url)
                    .frame(height: 44)
                    .padding(.horizontal, 12)
                    .background(Color(red: 242/255, green: 243/255, blue: 245/255))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.12), lineWidth: 0.5)
                    )
                    .padding(.bottom, 44)
                Image("QR")
                
            }
            .padding(.horizontal, 20)
            .frame(minHeight: 0, maxHeight: .infinity)
            
            HStack {
                MyButton(action: {}, text: "PNG")
                MyButton(action: {}, text: "SVG")
            }
            .frame(minHeight: 0, maxHeight: 68)
            .padding(.horizontal, 12)
            .padding(.vertical, 12)
            
        }
            
    }

}

#Preview {
    Screen_1_1()
}
