import SwiftUI

//(profileImageName: "yahiko", name: "@Yahiko_Pain", bio: "", city: "Paris", age: 26, yourGames: [""], favoriteGames: ["Zelda"], favoriteProfiles: [""])


struct ProfilsMatch: View {
    
    let profileImageName: String
    let name: String
    let bio: String
    let city: String
    let age: Int
    let yourGames : [String]
    let favoriteGames: [String]
    let favoriteProfiles: [String]
    
    @State private var rating: Int = 5
    
    var body: some View {
        NavigationView(){
            
            ZStack {
                Image("fond")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    
                    VStack(spacing: 5) {
                        Spacer()
                        
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Image(profileImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .clipShape(Rectangle())
                            .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 7)
                            .padding(.bottom, 20)
                        
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 180, height: 60)
                            .cornerRadius(20)
                            .opacity(0.8)
                            .shadow(color: Color.black.opacity(0.5),
                                    radius: 3,
                                    x: 3,
                                    y: 3)
                        
                        RatingView(rating: $rating)
                    }
                    
                    Spacer()
                    
                    Group {
                        HStack(spacing: 10) {
                            Image(systemName: "birthday.cake.fill")
                                .foregroundColor(.black)
                            Text("Âge:  \(age) ans")
                                .font(.subheadline)
                                .fontWeight(.bold)
                        }
                        HStack{
                            Image(systemName: "building.2.fill")
                                .foregroundColor(.black)
                            Text("Ville: \(city)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(1)
                        }
                        
                        Divider()
                            .frame(height: 1)
                            .background(Color.white)
                            .font(.system(size: 10, weight: .heavy))
                        
                        HStack() {
                            VStack {
                                Text("Jeux favoris")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer()
                                
                                
                                HStack{
                                    if favoriteGames.isEmpty {
                                        Text("Aucun jeu favori")
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                            .italic()
                                    } else {
                                        ForEach(favoriteGames, id: \.self) { game in
                                            Image("MK8")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 80, height: 120)
                                                .clipShape(Rectangle())
                                                .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                                .padding(20)
                                            Image("GTA")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 80, height: 120)
                                                .clipShape(Rectangle())
                                                .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                                .padding(20)
                                            Image("zelda")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 80, height: 120)
                                                .clipShape(Rectangle())
                                                .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                                .padding(20)
                                        }
                                    }
                                }
                                .navigationBarTitle("Gamers", displayMode: .inline)
                            }
                        }
                    }
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.white)
                        .font(.system(size: 10, weight: .heavy))
                    
                    HStack {
                        VStack {
                            Text("Profils favoris")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            HStack{
                                if favoriteProfiles.isEmpty {
                                    Text("Aucun profil favori")
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                        .italic()
                                } else {
                                    ForEach(favoriteProfiles.indices, id: \.self) { i in
                                        Image("onizuka")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 90, height: 90)
                                            .clipShape(Rectangle())
                                            .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                            .padding(15)
                                        
                                        Image("jean_bon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 90, height: 90)
                                            .clipShape(Rectangle())
                                            .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                            .padding(15)
                                        
                                        Image("itachi")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 90, height: 90)
                                            .clipShape(Rectangle())
                                            .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                            .padding(15)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
struct ProfilsMatch_Previews: PreviewProvider {
    static var previews: some View {
        ProfilsMatch(profileImageName: "yahiko", name: "@Yahiko_Pain", bio: "", city: "Paris", age: 26, yourGames: [""], favoriteGames: ["Zelda"], favoriteProfiles: [""])
    }
}
