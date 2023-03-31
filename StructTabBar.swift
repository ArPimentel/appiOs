//
//  PROJET_GAMEMATCHApp.swift
//  PROJET GAMEMATCH
//
//  Created by apprenant53 on 22/03/2023.
//

import SwiftUI

struct StructTabBar: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        
        WindowGroup {
            
            ContentView(viewRouter: viewRouter)
        }
    }
}



