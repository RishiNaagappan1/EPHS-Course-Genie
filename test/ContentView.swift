import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                WelcomeView()
                
                Spacer()
                
                SignUpView()
                
                Spacer()
                
                NavigationLink(destination: LoginView()) {
                    Text("Already have an account? Log in")
                        .foregroundColor(.red)
                }
               .padding() 
            }
            .navigationBarHidden(true)
        }
    }
}

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("eagle") // Replace "eagle" with the name of your eagle image asset
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            
            Text("Welcome to EPHS Course Genie!")
                .foregroundColor(.red)
                .font(.title)
                .padding()
        }
    }
}

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var navigateToProfile = false
    
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Last Name", text: $lastName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: signUp) {
                Text("Sign Up")
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
    
    func signUp() {
        // Implement your sign-up logic here
        // Example: send sign-up data to server, handle response, etc.
        navigateToProfile = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
