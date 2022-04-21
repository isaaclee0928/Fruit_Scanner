import SwiftUI
import Firebase

class SignUpModel: ObservableObject {

    @Published var FirstName: String = ""
    @Published var LastName: String = ""
    @Published var UserName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    // create account to firebase
    func createAccount() {
        Auth.auth().createUser(withEmail: self.email, password: self.password) { authResult, error in
          
        }
    }
}

