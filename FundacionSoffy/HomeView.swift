//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import AVKit

struct HomeView: View {
    @EnvironmentObject var contentVM: ContentViewModel
    @State private var showMenu = false
    @State private var currentIndex = 0
    
    let images : [String] = ["1","2","3"]
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 193/255, green: 235/255, blue: 255/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -70)
                    Text("Bienvenido!")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundColor(.pink)
                        .padding()
                     Image(images[currentIndex])
                      .resizable()
                     .frame(width: 350, height: 350)
                     .cornerRadius(20.0)
                     HStack{
                    ForEach(0..<images.count){index in
                        Circle()
                          .fill(self.currentIndex == index ? Color.red : Color.brown)
                         .frame(width: 10, height: 10)
                     }
                     }
                       .padding()
                      .onAppear{
                          print("Appear")
                    //We area going a to use timers
                       Timer.scheduledTimer(withTimeInterval: 2, repeats: true){ timer in
                           if self.currentIndex + 1 == self.images.count{
                              self.currentIndex = 0
                           }else{
                                self.currentIndex += 1
                           }
                         }
                      }
                    //
                    Button(action: {
                        self.showMenu.toggle()
                    },
                           label: {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                        
                           // .offset(x:-164,y: -670)
                    })
                    .offset(x:-164, y: -600)
                    
                }
            }
        }
    
            .sheet(isPresented: $showMenu) {
                MenuView()
                    
            }
        }
    }
//}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
