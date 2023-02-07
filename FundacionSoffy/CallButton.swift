//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI

struct CallButton: View {
    let phoneNumber: String

    var body: some View {
        Button(action: {
            guard let url = URL(string: "tel://\(self.phoneNumber)") else { return }
            UIApplication.shared.open(url)
        }) {
            Text("Llamar al \(phoneNumber)")
        }
    }
}
