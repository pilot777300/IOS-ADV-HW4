

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {

        VStack() {
            VStack(alignment: .center, spacing: 100){
                Image("vklogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .top)
                            .cornerRadius(25)
                Text("Вход")
                    .font(.title)
                TextFieldExample()

            }
            Spacer()
            
        }
        .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                      }
            Spacer()
        .tabItem {
                        Image(systemName: "person.text.rectangle")
                        Text("Лента")
                      }
            Spacer()
        .tabItem {
                        Image(systemName: "heart")
                        Text("Избранные")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
    }

}
          
struct TextFieldExample: View {
    
    @State private var emailTxtField: String = ""
    @State private var passTxtField: String = ""
    
    var body: some View {
        VStack {
            
            
            VStack(alignment: .leading) {
                Text("Введите e-mail и пароль")
                    .font(.title3)
                
                TextField("e-mail", text: $emailTxtField)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(7)
                    .border(.gray, width: 1.0)
                    
                
                TextField("пароль", text: $passTxtField)
                    .cornerRadius(7)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(7)
                    .border(.gray, width: 1.0)
                    .multilineTextAlignment(.leading)
                   
            }.padding()
        }.padding()
        LoginButton()
    }
    
}

struct LoginButton: View {
    
    var body: some View {
    
    Button(action: {
            print("Успешный вход")
        }, label: {
            Text("Войти")
                .padding()
                .frame(width: 200, height: 50, alignment: .center)
                .background(Color.blue)
                .foregroundColor(Color.white)
        })
    }
}
