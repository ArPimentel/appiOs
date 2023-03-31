//
//  mcSwiftUIApp.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 06/03/2023.
//

import SwiftUI

@main
struct mcSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
        ContentView(viewRouter: ViewRouter())
        }
    }
}
