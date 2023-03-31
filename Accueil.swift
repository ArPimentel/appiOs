//
//  TabBar.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 22/03/2023.
//

import SwiftUI

struct Accueil: View {
    @State var showSheet: Bool = false
    let tabJeux =  [vg1, vg2, vg3, vg4, vg5, vg6, vg7, vg8, vg9]
    let tabJeux3 =  [vgL1, vgL2, vgL3, vgL4, vgL5, vgL6, vgL7, vgL8, vgL9]
    let tabJeux4 =  [vgE1, vgE2, vgE3, vgE4, vgE5, vgE6, vgE7, vgE8, vgE9]

    var body: some View {
        GeometryReader {geometry in
            
            NavigationView {
                ZStack{
                    Rectangle().foregroundColor(Color(.white)).ignoresSafeArea().opacity(0.6).ignoresSafeArea()
                    
                    ScrollView {
                        VStack(spacing: 3) {
                            Caroussel(listeJeux: tabJeux, text: "Vente")
                            Caroussel(listeJeux: tabJeux3, text: "Location")
                            Caroussel(listeJeux: tabJeux4, text: "Échange")
                        }
                        .navigationBarTitle("Blibliothèque des jeux", displayMode: .inline)
                    }
                    Button(action: {
                        showSheet.toggle()
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:geometry.size.width/6-8, height: geometry.size.width/6-8)
                            .foregroundColor(.black)
                            .opacity(0.10)
                    })
                    .offset(y: geometry.size.height / 2.5)
                    
                }
                .sheet(isPresented: $showSheet, content: {
                    PageVente()
                })
            }
        }
    }
   
}

struct Accueil_Previews: PreviewProvider {
       static var previews: some View {
           Accueil()
       }
   }
