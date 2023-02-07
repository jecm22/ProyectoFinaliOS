//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import FirebaseAuth

import Firebase

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State private var showPassword = false
    @State private var showRegisterView = false
    @State var showRegistration = false
    @State private var isShowingRegistrationView = false
    
    @EnvironmentObject var contentVM: ContentViewModel
    @ObservedObject var contentViewModel = ContentViewModel()
    var body: some View {
        ZStack {
            Color(red: 193/255, green: 235/255, blue: 255/255)
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(hue: 1.0, saturation: 0.161, brightness: 0.318, opacity: 0.302))
                    .cornerRadius(20.0)
                
                if showPassword {
                              TextField("Password", text: $password)
                                  .padding()
                                  .background(Color(hue: 0.933, saturation: 0.197, brightness: 0.294, opacity: 0.258))
                                  .cornerRadius(20.0)
                                  .keyboardType(.default)
                          } else {
                              SecureField("Password", text: $password)
                                  .padding()
                                  .background(Color(hue: 0.933, saturation: 0.197, brightness: 0.294, opacity: 0.258))
                                  .cornerRadius(20.0)
                                  
                            }
                    
                          
                Button(action: {
                    self.showPassword.toggle()
                    
                }, label: {
                              Image(systemName: showPassword ? "eye.slash" : "eye")
                                
                          })
                .offset(x:150,y: -55)
                          
               
                Button(action: {
                    //Handle login
                    Task {
                                               await contentVM.signIn(withEmail: email, password: password)
                                           }
                    
                })
                {
                    Text("Iniciar Sesión")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(red: 255/255, green: 144/255, blue: 230/255))
                        .cornerRadius(20.0)
                }
                
                
                Text("No estas registrado?")
                    .foregroundColor(.black)
                    .padding()
                Button(action: {
                                 // Handle registration
                       self.showRegistration = true
                             })
                {
                                 Text("Registrarse")
                                     .foregroundColor(.blue)
                                      
                             }
                                .sheet(isPresented: $showRegistration) {
                                             RegisterView()
                             }
                         .padding()
                     }
                    
                 }
    }
}

             struct LoginView_Previews: PreviewProvider {
                 static var previews: some View {
                     LoginView()
                 }
             }

