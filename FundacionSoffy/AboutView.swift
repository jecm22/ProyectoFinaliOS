//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import MapKit

struct AboutView: View {
    @State var showHomeView = false
    var body: some View {
        NavigationView {
            ZStack {
        Color(red: 193/255, green: 235/255, blue: 255/255)
        .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("CONTACTO")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.pink)
                    .padding()
                    .frame(width: 300, height:70, alignment: .center)
                
                ScrollView {
                    VStack(spacing: 20) {
                        VStack{
                            HStack {
                                VStack {
                         
                                    Text("Para más información llame al: ")
                                                                                            .foregroundColor(.black)
                                                                                            .font(.headline)
                                                                                            .padding(.bottom, 20)
                                                                                        Text("+52 800 137 6672")
                                                                                        .foregroundColor(.black)
                                                                                        .font(.body)
                                                                                    
                                        
                                                                                     
                                                                    } .padding(30)
                                                                } .padding(0)
                           
                            HStack {
                                               Image("instagram-logo")
                                                   .resizable()
                                                   .frame(width: 40, height: 40)
                                                   .onTapGesture {
                                                       // Acción para abrir Instagram o el sitio web
                                                       let instagramURL = "https://www.instagram.com/fundacionsoffy/?hl=en"
                                                       UIApplication.shared.open(URL(string: instagramURL)!)
                                                   }
                                               Text("Síguenos en Instagram")
                                                   .foregroundColor(.black)
                                                   .font(.headline)
                                                   .padding(.bottom, 1)
                            } .padding(3)
                            HStack {
                                               Image("facebook-logo")
                                                   .resizable()
                                                   .frame(width: 35, height: 35)
                                                   .onTapGesture {
                                                       // Acción para abrir Instagram o el sitio web
                                                       let facebookURL = "https://es-la.facebook.com/FUNDACIONSOFFYUnaManoAmigaAC/"
                                                       UIApplication.shared.open(URL(string: facebookURL)!)
                                                   }
                                               Text(" Síguenos en Facebook")
                                                   .foregroundColor(.black)
                                                   .font(.headline)
                                                   .padding(.bottom, 0)
                            } .padding(10)
                            HStack {
                                               Image("twitter-logo")
                                                   .resizable()
                                                   .frame(width: 35, height: 35)
                                                   .onTapGesture {
                                                       // Acción para abrir Instagram o el sitio web
                                                       let twitterURL = "https://twitter.com/fundacionsoffy?lang=en"
                                                       UIApplication.shared.open(URL(string: twitterURL)!)
                                                   }
                                               Text(" Síguenos en Twitter     ")
                                                   .foregroundColor(.black)
                                                   .font(.headline)
                                                   .padding(.bottom, 10)
                            } .padding(10)
                            Text("Nuestra dirección:")
                                              .foregroundColor(.black)
                                              .font(.headline)
                                              .padding(.bottom, 0)
                                          Text("Fundación Soffy, una mano amiga A.C.")
                                              .foregroundColor(.blue)
                                              .font(.body)
                                              .onTapGesture {
                                                  // Acción para abrir en Google Maps
                                                  let url = "https://www.google.com/maps/place/Fundaci%C3%B3n+Soffy,+una+mano+amiga+A.C./@13.6604267,-100.348952,4z/data=!4m6!3m5!1s0x85d35a4fc142e2b9:0xf310a124c1700fef!8m2!3d20.6483617!4d-100.4040386!16s%2Fg%2F11c6lx3j6g"
                                                  UIApplication.shared.open(URL(string: url)!)
                                              } .padding(20)
                            Text("Visítenos en nuestra página web:")
                                               .foregroundColor(.black)
                                               .font(.headline)
                                               .padding(.bottom, 10)
                                           Text("https://fundacionsoffy.org/")
                                               .foregroundColor(.blue)
                                               .font(.body)
                                               .onTapGesture {
                                                   // Acción para abrir la página web en el navegador del teléfono
                                                   let websiteURL = "https://fundacionsoffy.org/"
                                                   UIApplication.shared.open(URL(string: websiteURL)!)
                                               }                        }
                        
                    }
                    
                }
            }
                
            }
            
        }
    }
}
    
    struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
