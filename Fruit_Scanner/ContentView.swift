import SwiftUI
import CoreData
import Firebase

struct ContentView: View {
    
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false

    var body: some View {
        NavigationView {
            
            if logStatus{
                Home()
            }else {
                loginPage().navigationBarHidden(true)
            }
        }
        .onAppear{
            FirebaseApp.configure()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
