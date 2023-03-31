
import Foundation
    

struct ListConsole: Identifiable {
    var id = UUID()
    let imageName: String
    let name: String
}

let m1 = ListConsole(imageName: "playstation.logo", name: "PS5")
let m2 = ListConsole(imageName: "playstation.logo", name: "PS4")
let m3 = ListConsole(imageName: "xbox.logo", name: "XBOX")
let m4 = ListConsole(imageName: "NintendoSwitch", name: "Nintendo Switch")
let m5 = ListConsole(imageName: "desktopcomputer", name: "PC")
let m6 = ListConsole(imageName: "magicmouse", name: "Accessoires")
let m7 = ListConsole(imageName: "", name: "Tous les articles")

let ConsoleList = [m1, m2, m3, m4, m5, m6, m7]
