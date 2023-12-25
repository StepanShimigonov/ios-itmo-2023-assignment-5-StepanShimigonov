import SwiftUI

struct Screen_2_1: View {
    let images = ["wall1", "wall2", "wall3"]
    
    var body: some View {
        VStack {
            HStack {
                Image("back")
                Spacer()
                Image("cart")
                Image("more")
                    .padding(.trailing, 4)
            }
            
            TabView {
                ForEach(images, id: \.self) { img in
                    Image(img)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .onAppear() {
                setUpAppearence()
            }
            .frame(maxHeight: 375)
        
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Стена в ВК")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    HStack {
                        Text("99999999999 ₽")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Text("0 ₽")
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                            .strikethrough()
                            .padding(.top, 4)
                    }
                }
                .padding(.leading, 12)
                .padding(.vertical, 20)
                Spacer()
                Image("bookmark")
            }
            Divider()
                .padding(.horizontal, 10)
                .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
            VStack(alignment: .leading) {
                Text("Доставка")
                    .font(.system(size: 16, weight: .regular, design: .default))
                Text("Никогда не доставим, Санкт-Петербург — сюда точно нет.")
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                Text("Бесплатная доставка была в 2006.")
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading, 12)
            .padding(.top, 5)
            .background()
            
            Spacer()
            
            VStack {
                Button(action: {
                }) {
                    Text("Добавить в корзину")
                        .font(.system(size: 17, weight: .medium, design: .default))
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color(red: 38/255, green: 136/255, blue: 235/255))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                }) {
                    Text("Написать")
                        .font(.system(size: 17, weight: .medium, design: .default))
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color(red: 242/255, green: 243/255, blue: 245/255))
                        .foregroundColor(Color(red: 38/255, green: 136/255, blue: 235/255))
                        .cornerRadius(10)
                }.padding(.top, 4)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 20)
        }
    }
}

private func setUpAppearence() {
    UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.gray)
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.2)
}

#Preview {
    Screen_2_1()
}
