//
//  Jeux.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 07/03/2023.
//

import SwiftUI

struct Jeux: Identifiable  {
    
    var id = UUID()
    let title: String
    let image: String
    let category: String
    var price: Double
    let euro: String
    let ageLimit: Int
    
}
let vg1 = Jeux(title: "God of War: Racknarok", image: "j1", category: "FPS", price: 19.9, euro:"acheter", ageLimit: 16)
let vg2 = Jeux(title: "Zelda", image: "j2", category: "aventure", price: 59.9, euro:"acheter", ageLimit: 7)
let vg3 = Jeux(title: "Counter-Strike", image: "j3", category: "FPS", price: 19.9, euro:"acheter", ageLimit: 16)
let vg4 = Jeux(title: "Zelda", image: "j4", category: "aventure", price: 40.9, euro:"acheter", ageLimit: 7)
let vg5 = Jeux(title: "Counter-Strike", image: "j5", category: "FPS", price: 19.9, euro:"acheter", ageLimit: 16)
let vg6 = Jeux(title: "Zelda", image: "j6", category: "aventure", price: 30.9, euro:"acheter", ageLimit: 7)
let vg7 = Jeux(title: "Counter-Strike", image: "j7", category: "FPS", price: 40, euro:"acheter", ageLimit: 16)
let vg8 = Jeux(title: "Zelda", image: "j16", category: "aventure", price: 20, euro:"acheter", ageLimit: 7)
let vg9 = Jeux(title: "Counter-Strike", image: "j8", category: "FPS", price: 25, euro:"acheter", ageLimit: 16)
let tabJeux =  [vg1, vg2, vg3, vg4, vg5, vg6, vg7, vg8, vg9]

let vgL1 = Jeux(title: "Joystick", image: "j9", category: "FPS", price: 4, euro:"/ Semaine", ageLimit: 16)
let vgL2 = Jeux(title: "Zelda", image: "j10", category: "aventure", price: 6, euro:"/ Semaine", ageLimit: 7)
let vgL3 = Jeux(title: "Counter-Strike", image: "j11", category: "FPS", price: 10, euro:"/ Semaine", ageLimit: 16)
let vgL4 = Jeux(title: "Zelda", image: "j12", category: "aventure", price: 4, euro:"€", ageLimit: 7)
let vgL5 = Jeux(title: "Counter-Strike", image: "c1", category: "FPS", price: 8, euro:"/ Semaine", ageLimit: 16)
let vgL6 = Jeux(title: "Zelda", image: "c2", category: "aventure", price: 4, euro:"/ Semaine", ageLimit: 7)
let vgL7 = Jeux(title: "Counter-Strike", image: "c3", category: "FPS", price: 6, euro:"/ Semaine", ageLimit: 16)
let vgL8 = Jeux(title: "Zelda", image: "c4", category: "aventure", price: 9, euro:"€", ageLimit: 7)
let vgL9 = Jeux(title: "Counter-Strike", image: "c5", category: "FPS", price: 10, euro:"/ Mois", ageLimit: 16)
let tabJeux3 =  [vgL1, vgL2, vgL3, vgL4, vgL5, vgL6, vgL7, vgL8, vgL9]

let vgE1 = Jeux(title: "Ps2", image: "c6", category: "FPS", price:10, euro:"/ Semaine", ageLimit: 16)
let vgE2 = Jeux(title: "Nintendo", image: "c7", category: "aventure", price:14, euro:"/ Semaine", ageLimit: 7)
let vgE3 = Jeux(title: "Counter-Strike", image: "c8", category: "FPS", price:10, euro:"/ Semaine", ageLimit: 16)
let vgE4 = Jeux(title: "Zelda", image: "c9", category: "aventure", price:5, euro:"/ Semaine", ageLimit: 7)
let vgE5 = Jeux(title: "Counter-Strike", image: "c10", category: "FPS", price:2, euro:"/ Jour", ageLimit: 16)
let vgE6 = Jeux(title: "Zelda", image: "c11", category: "aventure", price:10, euro:"/ Semaine", ageLimit: 7)
let vgE7 = Jeux(title: "Counter-Strike", image: "j13", category: "FPS", price:20, euro:"/ Mois", ageLimit: 16)
let vgE8 = Jeux(title: "Zelda", image: "j15", category: "aventure", price:5, euro:"/ Semaine", ageLimit: 7)
let vgE9 = Jeux(title: "Counter-Strike", image: "j14", category: "FPS", price:5, euro:"/ Semaine", ageLimit: 16)
let tabJeux4 =  [vgE1, vgE2, vgE3, vgE4, vgE5, vgE6, vgE7, vgE8, vgE9]

let ArtRe1 = Jeux(title: "God of War: Racknarok", image: "j17", category: "FPS", price: 29.9, euro:"€", ageLimit: 16)
let ArtRe2 = Jeux(title: "Zelda", image: "j18", category: "aventure", price: 36.9, euro:"€", ageLimit: 7)
let ArtRe3 = Jeux(title: "Counter-Strike", image: "j19", category: "FPS", price: 20.9, euro:"€", ageLimit: 16)
let ArtRe4 = Jeux(title: "Zelda", image: "j22", category: "aventure", price: 20, euro:"€", ageLimit: 7)
let ArtRe5 = Jeux(title: "Counter-Strike", image: "j21", category: "FPS", price: 19.9, euro:"€", ageLimit: 16)
let ArtRe6 = Jeux(title: "Zelda", image: "j20", category: "aventure", price: 10.9, euro:"€", ageLimit: 7)
let ArtRe7 = Jeux(title: "Counter-Strike", image: "j1", category: "FPS", price: 39.9, euro:"€", ageLimit: 16)
let ArtRe8 = Jeux(title: "Zelda", image: "god", category: "aventure", price: 20.9, euro:"€", ageLimit: 7)
let ArtRe9 = Jeux(title: "Counter-Strike", image: "howarts", category: "FPS", price: 15.9, euro:"€", ageLimit: 16)
let tabJeux2 = [ArtRe1, ArtRe2, ArtRe3, ArtRe4, ArtRe5, ArtRe6, ArtRe7, ArtRe8, ArtRe9]

