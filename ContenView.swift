//
//  ContentView.swift
//  mcSwiftUI
//
//  Created by apprenant71 on 06/03/2023.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewRouter: ViewRouter
    @State var IsLogin = false
    @State var showSheet: Bool = false
    @State var isShowingSheet = true
    @State private var selectedColor = "Type de produit"
    var body: some View {
        VStack{
            
            if(IsLogin){
                TopBar()
                GeometryReader {geometry in
                    
                    ZStack{
                        VStack{
                            switch viewRouter.currentPage{
                            case.home:
                                Accueil()
                            case.liked:
                                Recherche()
                            case.profils:
                                ProfilsMatch(profileImageName: "yahiko", name: "@Yahiko_Pain", bio: "", city: "Paris", age: 26, yourGames: [""], favoriteGames: ["Zelda"], favoriteProfiles: [""]).frame(width: UIScreen.main.bounds.size.width, height: 630)
                            case .records:
                                ViewMessage()
                            case .user:
                                Profil(profileImageName: "jean_bon", name: "@Jean_Bon", bio: "", city: "Marseille", age: 30, yourGames: [""], favoriteGames: [""], favoriteProfiles: [""]).frame(width: UIScreen.main.bounds.size.width, height: 630)
                            }
                            ZStack {
                                HStack{
                                    TabBarIcon( viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/34, systemIconName: "gamecontroller", TabName:"Accueil")
                                    TabBarIcon(viewRouter: viewRouter, assignedPage: .liked, width: geometry.size.width/5, height: geometry.size.height/34, systemIconName: "magnifyingglass", TabName:"GameList")
                                    TabBarIcon(viewRouter: viewRouter, assignedPage: .profils, width: geometry.size.width/5, height: geometry.size.height/34, systemIconName: "person.line.dotted.person", TabName:"Gamers")
                                    TabBarIcon(viewRouter: viewRouter, assignedPage: .records, width: geometry.size.width/5, height: geometry.size.height/34, systemIconName: "message", TabName:"MSN")
                                    TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/5, height: geometry.size.height/34, systemIconName: "person.text.rectangle", TabName:"Compte")
                                }
                            }
                            .frame(width: geometry.size.width, height:geometry.size.height/9)
                            .background(Color("azulOscuro").shadow(radius:3)).frame(width: UIScreen.main.bounds.size.width, height: 60)
                        }
                        
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
            }else {
                Inscription(AccederScreen: $IsLogin)  
                
            }
        }
        .sheet(isPresented: $showSheet, content: {
            PageVente()
        })
      
    }
}
struct TopBar : View{
    var body: some View {
        VStack  {
            VStack{
                HStack {
                    Image("logo_petit").font(.system(size: 20)).fontWeight(.semibold).foregroundColor(.white)
                    Spacer()
                    Button (action: {
                    }, label: {
                        Image("manette_favoris").font(.headline).foregroundColor(.white).padding(.leading)
                    })
                    
                    Button (action: {
                    }, label: {
                        Image(systemName: "gearshape").font(.headline).foregroundColor(.white)
                    })
                    
                    Button (action: {
                    }, label: {
                        Image(systemName: "questionmark.circle").font(.headline).foregroundColor(.white)
                    })
                }
            }
            VStack{
                Text("Bienvenue Yahiko_Pain")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.trailing)
                Text("")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                    .padding(.top)
            }
        }.padding()
            .background(Color("azulOscuro"))
            .frame(width: UIScreen.main.bounds.size.width, height: 100)
          
    }
}
//
//// FIN TABBAR CODE
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    let width, height: CGFloat
    let systemIconName, TabName:String
    
    var body: some View {
        VStack{
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(TabName)
                .font(.caption2)
            Spacer()
        }
        .padding(.horizontal, -5)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color(.red): .white)
    }
}
//
