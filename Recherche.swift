//
//  APPBAR.swift
//  PROJET GAMEMATCH
//
//  Created by apprenant53 on 23/03/2023.
//

import SwiftUI
struct Recherche: View {
    @State var  text = ""

    var body: some View {
    
        NavigationView() {
            //DEBUT APPBAR CODE
            
            VStack {
          
                Rectangle().opacity(0).searchable(text: $text, placement: /*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 40).foregroundColor(.gray).cornerRadius(10)
                List(ConsoleList) { ListConsole in
                    NavigationLink(destination:
                                    TestbarreRecherche_2(meteoParam: m1), label: {
                        Image(systemName: ListConsole.imageName)
                        Text(ListConsole.name)
                    })
                }
                Caroussel(listeJeux: tabJeux2, text: "Sugestions d'articles")

            }
            
            //  FIN LISTE
            .navigationBarTitle("Recherche", displayMode: .inline)
        }

    }
}
struct Recherche_Previews: PreviewProvider {
    static var previews: some View {
        Recherche()
    }
}

//class host: UIHostingController<ContentView> {
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//}




//FIN APPBAR CODE BOTTOM

