//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//


import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var contentVM: ContentViewModel
    
    var body: some View {
        Group {
            if contentVM.userSession != nil {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
