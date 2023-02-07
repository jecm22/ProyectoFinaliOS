//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import AVKit
import MapKit
import MessageUI
import CoreLocation

struct SettingsView: View {
    @State private var locationManager = CLLocationManager()
    @State private var location: CLLocationCoordinate2D?
    @State private var showCamera = false
    @State var isShown = false
    @State var image: UIImage?
    @State private var isPresentingCamera = false

    var body: some View {
        ZStack {
            Color(red: 193/255, green: 235/255, blue: 255/255)
           .edgesIgnoringSafeArea(.all)
            VStack {
                Text("HERRAMIENTAS")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.pink)
                    .padding()
                
                    .frame(width: 300, height:45, alignment: .center)
                    .offset(x:0,y: -150)
                VStack {
                    Button(action: {
                        // Código para primer botón
                        self.locationManager.requestWhenInUseAuthorization()
                                   self.locationManager.startUpdatingLocation()
                                   self.location = self.locationManager.location?.coordinate
                                   
                                   guard let location = self.location else { return }
                                   let message = "Mi ubicación actual es lat: \(location.latitude), lon: \(location.longitude)"
                                   let url = URL(string: "sms:&body=\(message)")!
                                   UIApplication.shared.open(url)
                    }, label: {
                        Text("Enviar Ubicación")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color(red: 255/255, green: 144/255, blue: 230/255))
                            .cornerRadius(20.0)
                        
                    })
                 
                    }
                    .padding(40)
                
                    
                    
                Button(action: {
                                            self.isPresentingCamera = true
                                        }) {
                                            Text("Tomar Foto")
                                                .foregroundColor(.black)
                                                .padding()
                                                .background(Color(red: 255/255, green: 144/255, blue: 230/255))
                                                .cornerRadius(20.0)
                                        }.sheet(isPresented: $isPresentingCamera) {
                                            CameraButton()
                                        }
               
                
            }
            .offset(x:0, y: -70)
       
        }
        
    }
        
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
