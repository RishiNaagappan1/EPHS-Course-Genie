import SwiftUI

struct LoginView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var navigateToProfile = false
    
    var body: some View {
        VStack {
            Text("Login")
                .foregroundColor(.red)
                .font(.title)
                .padding()
                .fontWeight(.bold)
            
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: login) {
                Text("Log In")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
            .padding()
            NavigationLink(destination: ProfileView(firstName: firstName, lastName: lastName), isActive: $navigateToProfile) {
                    EmptyView()
                }
        }
        .padding()
    }
    
    func login() {
        // Implement your login logic here
        // Example: validate credentials, navigate to next screen, etc.
        navigateToProfile = true
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
