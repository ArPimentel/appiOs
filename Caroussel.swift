//
//  Caroussel.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 24/03/2023.
//

import SwiftUI

struct Caroussel: View {
    var listeJeux: [Jeux]
    var text: String
    var body: some View {
        ZStack {
            
            Rectangle().foregroundColor(Color.white).ignoresSafeArea().opacity(0.6)
            VStack(alignment: .center, spacing: 0) {
                HStack{
                    Text(text).padding(.top, 10)
                        .font(Font.custom("PoiretOne", size: 20))
                        .frame(width: UIScreen.main.bounds.size.width, height: 10)  .foregroundColor(.black)
                        .background(Color(.white))
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        
                        ForEach(listeJeux) { jeux in
//                            NavigationLink(destination: Inscription() ){
                                GeometryReader { geometry in
                               
                                        HStack {
                                            ZStack{
                                                Image(jeux.image)
                                                    .resizable()
                                                    .padding([.top, .trailing], 20)
                                                    .scaledToFill()
                                                    .scaledToFit()
                                                    .shadow(radius: 4)
                                                    .padding(.bottom,8)
                                                Text(jeux.title)
                                                    .font(.caption)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color(.black))
                                                    .padding(.top, -65)
                                                    .padding(.trailing,-60)
                                            }
                                            VStack(spacing: 3) {
                                                Text("\(jeux.category)")
                                                    .font(.body)
                                                    .fontWeight(.bold).foregroundColor(.black)
                                                    .padding(.top)
                                                
                                                Text("\(jeux.price, specifier: "%.2f" + "€")").font(.callout).fontWeight(.heavy).foregroundColor(.red)
                                                Text("\(jeux.euro)").font(.caption2).fontWeight(.bold).foregroundColor(.blue).multilineTextAlignment(.leading)
                                                Text("PEGI :\(jeux.ageLimit)").font(.caption2).fontWeight(.semibold).foregroundColor(.black)
                                        
                                            }
                                        }.padding(.top)
                                    .rotation3DEffect(
                                        Angle(
                                            degrees: Double((geometry.frame(in:.global).minX - 90) / -30)
                                        ),     axis: (x: 0, y: 1, z: 0),
                                        anchor: .trailing,
                                        anchorZ: 0.0,
                                        perspective: 2.0)
                                }
                                .padding()
                                .frame(width: 200, height: 190)
                            }
                            
                        }
                    }
                }
                
            }
        }
    }
//}

struct Caroussel_Previews: PreviewProvider {
    static var previews: some View {
        Caroussel(listeJeux: tabJeux, text: "TITLE")
    }
}
