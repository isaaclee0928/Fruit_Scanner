import SwiftUI
import Firebase

struct ContentView: View {
    
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false

    var body: some View {

        NavigationView {
            
            if logStatus{
                AppView()
                    //.navigationBarHidden(false)
            }else {
                loginPage().navigationBarHidden(true)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationTitle("")
        .onAppear{
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
