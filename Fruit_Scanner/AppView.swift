import SwiftUI
import UIKit

struct AppView : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: WelcomeViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = WelcomeViewController
    
    func makeUIViewController(context: Context) -> WelcomeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "welcome") as! WelcomeViewController
        return vc
    }
}
