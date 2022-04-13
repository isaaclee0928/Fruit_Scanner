//
//  loginView.swift
//  FruitScanner
//


import SwiftUI
import Firebase
import LocalAuthentication

class loginView: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    // FaceID Properties
    @AppStorage("use_face_id") var useFaceID: Bool = false
    @AppStorage("use_face_email") var FaceIDEmail: String = ""
    @AppStorage("use_face_password") var FaceIDPassword: String = ""
    
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false
    
    //Error
    @Published var showError: Bool = false
    @Published var errorMsg: String = ""
    
    // Firebase Login
    func loginUser(useFaceID: Bool, email: String = "", password: String = "")async throws{
        
        let _ = try await Auth.auth().signIn(withEmail: email != "" ? email : self.email, password: password != "" ? password : self.password)
        
        DispatchQueue.main.async {
         
            if useFaceID{
                self.useFaceID = useFaceID
                // Storing for future FaceID Login
                self.FaceIDEmail = email
                self.FaceIDPassword = password
            }
            self.logStatus = true
        }
    }
    
    // FaceID Usage
    func getBioMetricStatus()-> Bool {
        
        let scanner = LAContext()
        
        return scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none)
    }
    
    // FaceID Login
    func authenticateUser()async throws {
        
        let status = try await LAContext().evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                                                          localizedReason: "To Login Into App")
        
        if status{
            try await loginUser(useFaceID: useFaceID,email: self.email,password:self.password)
        }
    }
}
