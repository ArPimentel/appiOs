//
//  ViewRouter.swift
//  PROJET GAMEMATCH
//
//  Created by apprenant53 on 22/03/2023.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .home
    
}
enum Page {
    case home
    case liked
    case profils
    case records
    case user
}


