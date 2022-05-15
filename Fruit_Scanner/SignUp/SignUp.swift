import SwiftUI
import Firebase

struct SignUp: View {
    
    @StateObject var signUpModel: SignUpModel = SignUpModel()
    @StateObject var loginModel: LoginModel = LoginModel()
    
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false
    
    // FaceID Properties
    @State var useFaceID: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("Welcome, to Create Account")
            
            TextField("FirstName", text: $signUpModel.FirstName)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            signUpModel.FirstName == "" ? Color.black.opacity(0.05): Color("Orange"))
                    
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            TextField("LastName", text: $signUpModel.LastName)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            signUpModel.LastName == "" ? Color.black.opacity(0.05): Color("Orange"))
                    
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            TextField("UserName", text: $signUpModel.UserName)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            signUpModel.UserName == "" ? Color.black.opacity(0.05): Color("Orange"))
                    
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            TextField("Email", text: $signUpModel.email)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            signUpModel.email == "" ? Color.black.opacity(0.05): Color("Orange"))
                    
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            TextField("Password", text: $signUpModel.password)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            signUpModel.password == "" ? Color.black.opacity(0.05): Color("Orange"))
                    
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            Button {
                signUpModel.createAccount()
                signUpModel.showError.toggle()
                
            } label: {
                Text("SignUp")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 8).fill(Color(.brown))
                    }
            }
            .disabled(signUpModel.email == "" || signUpModel.password == "" ||
                                   signUpModel.FirstName == "" || signUpModel.LastName == "" || signUpModel.UserName == "")
            .opacity(signUpModel.email == "" || signUpModel.password == "" ||
                                  signUpModel.FirstName == "" || signUpModel.LastName == "" || signUpModel.UserName == "" ? 0.5 : 1)
            .padding(.vertical, 35)
            .alert(signUpModel.errorMsg, isPresented: $signUpModel.showError){
                
            }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
}
