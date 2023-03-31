//
//  Detalle.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 06/03/2023.
//

import SwiftUI

struct Inscription: View {
    @Binding var AccederScreen: Bool
    var body: some View {

        VStack {
            ZStack {
                Rectangle().foregroundColor(Color("gray")).ignoresSafeArea()
                    
                VStack {
                    Image("logo")
                        .accentColor(Color(.blue))
                    Text("Match un jeu et adopte le")
                        .fontWeight(.bold)
                        .foregroundColor(Color("azulOscuro"))
                    Text("Vente, location et échange")
                        .foregroundColor(Color("azulOscuro")).bold()
                    Text("")
                        .padding(.bottom)
                    Button(action: {
                    
                    }, label: {
                        VStack {
                            ZStack {
                                Rectangle().frame(width: 100, height: 40).cornerRadius(8)
                                Text("INCRIPTION").foregroundColor(.white).font(.system(size: 13).bold())
                            }
                        }
                    })
                    
                    .foregroundColor(Color("azulOscuro"))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    Button(action: {
                        AccederScreen = true
                    }, label: {
                        
                        VStack {
                            ZStack {
                                Rectangle().frame(width: 100, height: 40).cornerRadius(8)
                                Text("CONNEXION").foregroundColor(.white).font(.system(size: 13).bold())
//                                Text("\(tabJeux)")
                            }
                        }
                    })
                    
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("azulOscuro"))
                            }
                        }
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
        }
//struct Inscription_Previews: PreviewProvider {
//    static var previews: some View {
//        Inscription()       
//
//    }
//}




