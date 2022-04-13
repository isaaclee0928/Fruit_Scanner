//
//  Home.swift
//  FruitScanner
//

import SwiftUI
import Firebase

struct Home: View {
    
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
        
        VStack(spacing: 20){
            if logStatus{
                Text("Logged In")
                
                Button("Loggout") {
                    try? Auth.auth().signOut()
                    logStatus = false
                }
                
            }else{
                Text("Came as Guset")
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Home")
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
 }
