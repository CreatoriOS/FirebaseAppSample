//
//  ContentView.swift
//  FirebaseApp
//
//  Created by Zhansaya Bortanova on 26/01/2023.
//

import SwiftUI
import SystemConfiguration
import FirebaseAuth

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button(action: { login()}){
                Text("Sign in")
            }
        }
       
            .padding()
    }
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else{
                print ("success")
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
