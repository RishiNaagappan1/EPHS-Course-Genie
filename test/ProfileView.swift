import SwiftUI

struct ProfileView: View {
    var firstName: String
    var lastName: String
    
    var body: some View {
        VStack {
            ProfileHeaderView(firstName: firstName, lastName: lastName)
            
            Spacer()
            
            Text("Welcome, \(firstName) \(lastName)!")
                .font(.title)
                .padding()
                .foregroundColor(.red)
            Spacer()
        }
    }
}

struct ProfileHeaderView: View {
    var firstName: String
    var lastName: String
    
    var body: some View {
        HStack {
            Text("\(firstName.isEmpty ? "" : String(firstName.first!))\(lastName.isEmpty ? "" : String(lastName.first!))")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(Circle())
                .padding()
            
            Text("\(firstName) \(lastName)")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(firstName: "Srikar", lastName: "Sannapareddy")
    }
}
