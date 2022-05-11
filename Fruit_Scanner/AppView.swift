import SwiftUI
import UIKit

struct AppView : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: FirstPageViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = FirstPageViewController
    
    func makeUIViewController(context: Context) -> FirstPageViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "FPVC") as! FirstPageViewController
        return vc
    }
}
