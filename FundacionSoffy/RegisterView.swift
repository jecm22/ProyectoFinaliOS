//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct RegisterView: View {
@State var email: String = ""
@State var password: String = ""
@State var repeatPassword: String = ""
@State private var showPassword = false
@State private var showRepeatPassword = false
@State private var showRegisterView = false
@State private var showLogin = false
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var contentVM: ContentViewModel
    
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
                          
                if showRepeatPassword {
                                             TextField("Repeat Password", text: $repeatPassword)
                                                 .padding()
                                                 .background(Color(hue: 0.933, saturation: 0.197, brightness: 0.294, opacity: 0.258))
                                                 .cornerRadius(20.0)
                                                 .offset(y:-35)
                                                 .keyboardType(.default)
                                                 
                                        } else {
                                             SecureField("Repeat Password", text: $repeatPassword)
                                                 .padding()
                                                 .background(Color(hue: 0.933, saturation: 0.197, brightness: 0.294, opacity: 0.258))
                                                 .cornerRadius(20.0)
                                                 .offset(y:-35)
                                         }
                               Button(action: {
                                   self.showRepeatPassword.toggle()
                               }, label: {
                                             Image(systemName: showRepeatPassword ? "eye.slash" : "eye")
                                               
                                         })
                               .offset(x:150,y: -89)
                Button(action: {
                    // Aquí es donde se manejará el registro con Firebase
                    
                    Task {
                                               await contentVM.createUser(withEmail: email, password: password)
                                           }
                    
                })
                {
                    Text("Registrar")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(red: 255/255, green: 144/255, blue: 230/255))                        .cornerRadius(20.0)
                } .offset(x:0,y:-68)
                
                Text("Ya estas registrado?")
                    .foregroundColor(.black)
                    .offset(x:0, y:-46)
                Button(action: {
                                 // Handle registration
                
                             }) {
                                 Text("Iniciar sesión")
                                     .foregroundColor(.blue)
                             } .offset(x:0, y:-54)
                    .sheet(isPresented: $showLogin) {
                                       LoginView()
                                   }
            }
                         .padding()
                        }
                 }
                 
             }
struct RegisterView_Previews: PreviewProvider {
                 static var previews: some View {
                     RegisterView()
                 }
             }


