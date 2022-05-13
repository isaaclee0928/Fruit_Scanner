import SwiftUI

struct SignUp: View {
    
    @StateObject var signUpModel: SignUpModel = SignUpModel()
    
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false
    
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
            
            Button("SignUp"){
                signUpModel.createAccount()
                    logStatus = true
                if signUpModel.password != "" {
                    
                }
                    AppView()
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(false)
                
            }
            .disabled(signUpModel.email == "" || signUpModel.password == "" ||
                      signUpModel.FirstName == "" || signUpModel.LastName == "" || signUpModel.UserName == "")
        }       
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
