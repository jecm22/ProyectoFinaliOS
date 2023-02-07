//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//


import SwiftUI

import SwiftUI

struct ErrorView: View {
    @Binding var alert: Bool
    @Binding var errorMessage: String

    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text(self.errorMessage)
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
            .onTapGesture {
                self.alert = false
            }
        }
    }
}
//struct ErrorView_Previews: PreviewProvider {
  //  static var previews: some View {
    //    ErrorView()
    //}
//}
