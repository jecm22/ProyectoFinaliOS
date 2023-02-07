//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//


import SwiftUI
import FirebaseCore

@main
struct SofyApp: App {
    
    @StateObject var contentVM = ContentViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(contentVM)
        }
    }
}
