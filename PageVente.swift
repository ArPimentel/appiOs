import SwiftUI


let typeProduit = ["Aucun produit", "Console", "Jeux video", "Manette", "Casque virtuel"]
let etatDeProduit = ["Aucun etat","Neuf", "Tres bon etat", "Bon etat", "Satisfaisant"]
let prixMinimal = ["10€","12€","15€","18€","20€", "25€", "28€", "30€", "40€", "43€", "46€", "50€"]

struct PageVente: View {
    @State var showSheet: Bool = false
    @State private var nom = ""
    @State private var type = typeProduit[0]
    @State private var etat = etatDeProduit[0]
    @State private var prix = prixMinimal[0]
    
    var body: some View {
        GeometryReader {geometry in
            NavigationView(){
                ZStack {
                    Rectangle().foregroundColor(Color("azulOscuro")).ignoresSafeArea().ignoresSafeArea()
                    VStack{
                        Form {
                            Text("**Produit à vendre:** \r \(type) \r \(etat) \r \(prix)")
                                .multilineTextAlignment(.center)
                            
                            Picker("Type de produit", selection: $type) {
                                ForEach(typeProduit, id: \.self) {
                                    Text($0)
                                }
                            }
                            Picker("Etat", selection: $etat) {
                                ForEach(etatDeProduit, id: \.self) {
                                    Text($0)
                                }
                            }
                            HStack{
                                VStack{
                                    Picker("Prix", selection: $prix) {
                                        ForEach(prixMinimal, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                }
                            }
                            Section(header: Text("Nom")) {
                                TextField("Nom", text: $nom)
                                
                            }
                            Button(action: {
                                
                                
                            }, label: {
                                ZStack{
                                    Text("Publier")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Rectangle().frame(width: 150, height: 50).cornerRadius(10)
                                        .foregroundColor(Color("azulOscuro"))
                                        .opacity(0.5)
                                }
                            })
                            .navigationBarTitle("Publier une vente", displayMode: .inline)
                        }
                        Button(action: {
                            showSheet.toggle()
                            
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:geometry.size.width/7-8, height: geometry.size.width/7-8)
                                .foregroundColor(.black)
                                .opacity(0.9)
                        })
                        .offset(y: geometry.size.height / 50)
                        
                    }
                    .sheet(isPresented: $showSheet, content: {
                        PageLocation()
                    })
                }
            }
        }
    }
}


struct Vente_Previews: PreviewProvider {
    static var previews: some View {
        PageVente()
    }
}


