//
//  FirebaseAppApp.swift
//  FirebaseApp
//
//  Created by Zhansaya Bortanova on 26/01/2023.
//

import SwiftUI
import Firebase
@main
struct FirebaseAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
