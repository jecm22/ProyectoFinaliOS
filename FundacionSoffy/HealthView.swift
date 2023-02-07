//
// 
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//


import SwiftUI

struct HealthView: View {
    @State var showHomeView = false
    var body: some View {
        NavigationView {
        ZStack {
        Color(red: 193/255, green: 235/255, blue: 255/255)
        .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("AREA DE SALUD")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.pink)
                    .padding()
                    .cornerRadius(20.0)
                    .frame(width: 300, height: 70, alignment: .center)
                
                ScrollView {
                    VStack(spacing: 20) {
                        VStack{
                            HStack {
                                VStack {
                                      Text("Tip 1                                           ¨Beber suficiente agua: Es esencial mantener un buen flujo de orina para ayudar a los riñones a eliminar las toxinas del cuerpo. Asegúrate de beber al menos 8 vasos de agua al día para mantenerte hidratado.¨")
                                          .foregroundColor(.black)
                                          .padding()
                                          .background(Color.white)
                                          .cornerRadius(30.0)
                                          .overlay(
                                                RoundedRectangle(cornerRadius: 30)
                                                        .stroke(Color.black, lineWidth: 2)
                                                  )
                                          .frame(width: 300, height: 250)
                                }
                            }
                           
                            Text("Tip 2                                       ¨Controlar el consumo de sal: Una dieta rica en sodio puede aumentar la presión arterial y poner una carga extra en los riñones. Trata de reducir tu ingesta de sal y evita alimentos procesados que son ricos en sodio.¨")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30.0)
                                .overlay(
                                      RoundedRectangle(cornerRadius: 30)
                                              .stroke(Color.black, lineWidth: 2)
                                        )
                                .frame(width: 300, height: 250)
                            
                            Text("Tip 3                                       ¨Mantener un peso saludable: El sobrepeso y la obesidad pueden aumentar el riesgo de enfermedad renal. Mantener un peso saludable a través de una dieta equilibrada y ejercicio regular puede ayudar a prevenir problemas renales.")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30.0)
                                .overlay(
                                      RoundedRectangle(cornerRadius: 30)
                                              .stroke(Color.black, lineWidth: 2)
                                        )
                                .frame(width: 300, height: 250)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        }
    }
}
struct HealthView_Previews: PreviewProvider {
    static var previews: some View {
        HealthView()
    }
}
