//
//  
//  FundacionSoffy
//
//  Created by Jesús Enrique Castro on 25/01/23.
//

import SwiftUI
import UIKit

struct CameraButton: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CameraButton>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<CameraButton>) {
    }
}
