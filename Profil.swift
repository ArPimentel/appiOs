

import SwiftUI
struct Profil: View {
    
    let profileImageName: String
    let name: String
    let bio: String
    let city: String
    let age: Int
    let yourGames :[String]
    let favoriteGames: [String]
    let favoriteProfiles: [String]
    @State private var rating: Int = 5
    @State var isLiked = false
    @State var likeIconName = "heart.fill"
    @State var dislikeIconName = "heart.slash.fill"
    
    var body: some View {
        NavigationView(){
            
            
     
        ZStack {
            Image("fond")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                Group{
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
                        Button(action: {
                            self.isLiked.toggle()
                            self.likeIconName = self.isLiked ? "heart.slash.fill" : "heart.fill"
                            
                            self.dislikeIconName = self.isLiked ? "heart.slash.fill" : "heart.fill"
                        }) {
                            if self.isLiked {
                                Label("Je n'aime plus", systemImage: self.dislikeIconName)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                            } else {
                                Label("J'aime", systemImage: self.likeIconName)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                            }
                        }
                    }
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
                    
                    HStack(spacing: 10) {
                        Image(systemName: "building.2.fill")
                            .foregroundColor(.black)
                        
                        
                        Text("Ville:  \(city)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(1)
                    }
                    
                    HStack {
                        VStack{
                            Text("Plateforme utilisés: Nintendo Switch, PS5, PC")
                                .font(.body)
                                .padding(10)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text("Biographie")
                                .font(.title)
                                .padding(2)
                                .fontWeight(.bold)
                            Spacer()
                            HStack{
                                Text("Je suis un cochon sportif qui pratique \n le catch dans la boue et le rugby.")
                                    .font(.body)
                                    .padding(10)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
                
                
                Divider()
                    .frame(height: 1)
                    .background(Color.white)
                    .font(.system(size: 10, weight: .heavy))
                
                HStack() {
                    VStack {
                        Text("Vos jeux")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        HStack{
                            if yourGames.isEmpty {
                                Text("Aucun jeu favori")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                                    .italic()
                            } else {
                                ForEach(yourGames, id: \.self) { game in
                                    
                                    Image("ACNH")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                    Image("just_dance")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                    Image("sims")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                }
                            }
                        }
                    }
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
                                    Image("minecraft")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                    Image("cyberpunk")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                    Image("assassins_creed")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 120)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(20)
                                }
                            }
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
                                    Image("cardi_b")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 90)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(15)
                                    
                                    Image("chelsea")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 90)
                                        .clipShape(Rectangle())
                                        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                                        .padding(15)
                                    
                                    Image("maduro")
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
        .navigationBarTitle("Profil", displayMode: .inline)
        }
    }
}
struct RatingView: View {
    
    @Binding var rating: Int
    
    var body: some View {
        VStack {
            Text("Donnez une note:")
                .fontWeight(.bold)
            
            HStack {
                ForEach(1..<6) { number in
                    Button(action: {
                        rating = number
                    }, label: {
                        Image(systemName: number <= rating ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    })
                }
            }
        }
    }
}


struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil(profileImageName: "jean_bon", name: "@Jean_Bon", bio: "", city: "Marseille", age: 30, yourGames: [""], favoriteGames: [""], favoriteProfiles: [""])
    }
}
