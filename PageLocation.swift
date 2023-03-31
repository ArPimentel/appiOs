import SwiftUI


let typeProduit2 = ["Aucun produit", "Console", "Jeux video", "Manette", "Casque virtuel"]
let etatDeProduit2 = ["Aucun etat","Neuf", "Tres bon etat", "Bon etat", "Satisfaisant"]
let prixMinimal2 = ["10€","12€","15€","18€","20€", "25€", "28€", "30€", "40€", "43€", "46€", "50€"]

struct PageLocation: View {
    @State var showSheet: Bool = false
    @State private var nom = ""
    @State private var type = typeProduit2[0]
    @State private var etat = etatDeProduit2[0]
    @State private var prix = prixMinimal2[0]
    @State private var debut = Date()
    @State private var fin = Date()
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    var body: some View {
        GeometryReader {geometry in
            NavigationView(){
                ZStack {
                    Rectangle().foregroundColor(Color("azul")).ignoresSafeArea().ignoresSafeArea()
                    VStack{
                        
                        Form {
                            VStack{
                                Text("Resumen:")
                                
                            }
                            HStack{
                                Text("\(type) \r \(etat) \r \(prix)")
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                VStack{
                                    Text("**Date de forfait**")
                                    Text(debut, formatter: dateFormatter)
                                        .foregroundColor(Color.red)
                                    
                                    Text(fin, formatter: dateFormatter)
                                        .foregroundColor(Color.red)
                                }
                            }
                            
                            
                            
                            Picker("Type de produit", selection: $type) {
                                ForEach(typeProduit2, id: \.self) {
                                    Text($0)
                                }
                            }
                            Picker("Etat", selection: $etat) {
                                ForEach(etatDeProduit2, id: \.self) {
                                    Text($0)
                                }
                            }
                            HStack{
                                VStack{
                                    Picker("Prix", selection: $prix) {
                                        ForEach(prixMinimal2, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                }
                            }
                            
                            Section(header: Text("Nom")) {
                                TextField("Nom", text: $nom)
                            }
                            Text("Date d'inscription")
                            DatePicker("Date debut", selection : $debut)
                            DatePicker("Date de fin", selection : $fin)
                            //                                .datePickerStyle(WheelDatePickerStyle())
//                                .labelsHidden()
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
                            .navigationBarTitle("Publier une location", displayMode: .inline)
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
                        .offset(y: geometry.size.height / 60)
                        
                    }
                    .sheet(isPresented: $showSheet, content: {
                        PageEchanger()
                    })
                }
            }
        }
    }
}


struct PageLocation_Previews: PreviewProvider {
    static var previews: some View {
        PageLocation()
    }
}


