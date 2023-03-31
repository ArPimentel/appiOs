import SwiftUI


let typeProduit3 = ["Aucun produit", "Console", "Jeux video", "Manette", "Casque virtuel"]
let etatDeProduit3 = ["Aucun etat","Neuf", "Tres bon etat", "Bon etat", "Satisfaisant"]

struct PageEchanger: View {
    @State var showSheet: Bool = false
    @State private var nom = ""
    @State private var type = typeProduit3[0]
    @State private var etat = etatDeProduit3[0]
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
                    Rectangle().foregroundColor(Color(hue: 0.575, saturation: 0.611, brightness: 1.0)).ignoresSafeArea()
                    VStack{
                        
                        Form {
                            VStack {
                                Text("Resumen:")
                                HStack{
                                    Text("\(type) \r \(etat)") .bold()
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
                            }
                          
                            
                            Picker("Type de produit", selection: $type) {
                                ForEach(typeProduit3, id: \.self) {
                                    Text($0)
                                }
                            }
                            Picker("Etat", selection: $etat) {
                                ForEach(etatDeProduit3, id: \.self) {
                                    Text($0)
                                }
                            }
                            HStack{
                                List{
                                    Text("Caution").font(.callout).foregroundColor(Color.red)
                                    Spacer()
                                    Text("200€")
                                }
                            }
                            
                            Section(header: Text("Nom")) {
                                TextField("Nom", text: $nom)
                            }
                            
                            Text("Délais de forfait")
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
                            .navigationBarTitle("Publier un échange", displayMode: .inline)
                        }
                        Button(action: {

//                            showSheet.toggle()
                            
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:geometry.size.width/7-8, height: geometry.size.width/7-8)
                                .foregroundColor(.black)
                                .opacity(0.0)
                        })
                        .offset(y: geometry.size.height / 60)
                        
                    }
                    .sheet(isPresented: $showSheet, content: {
               
                    })
                }
            }
        }
    }
}



    

struct PageEchanger_Previews: PreviewProvider {
    static var previews: some View {
        PageEchanger()
    }
}


