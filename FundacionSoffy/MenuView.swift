//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var contentVM: ContentViewModel
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 193/255, green: 235/255, blue: 255/255)
                    .edgesIgnoringSafeArea(.all)
            VStack {
                Text("MENU")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.pink)
                    .padding()
                    .frame(width: 300, height:45, alignment: .center)
                    .offset(x:0,y: -100)
                NavigationLink(destination: SettingsView()) {
                Text("➤Herramientas")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                }
            .padding()
             
            NavigationLink(destination: HealthView()) {
                Text("➤Salud")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            }
            .padding(20)
             
            NavigationLink(destination: AboutView()) {
                Text("➤Acerca de la Fundación")
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            .padding(20)
            
            Button(action: {
                // Código para cerrar sesión
                contentVM.signout()
            }, label: {
                Text("➤Cerrar Sesión")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.red)
                
            })
            .offset(x:0, y: 20)
        }
            .offset(x:0,y: -100)
    }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
