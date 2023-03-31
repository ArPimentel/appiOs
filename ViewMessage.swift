import SwiftUI

struct ViewMessage: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Salut"]
    
    var body: some View {
        NavigationView() {
            VStack {
                HStack {
                    
                    Image(systemName: "bubble.left.fill")
                        .font(.system(size:26))
                        .foregroundColor(Color.blue)
                }
                
                ScrollView {
                    ForEach(messages, id: \.self) {message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            HStack{
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.blue.opacity(0.8))
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            HStack{
                                Text(message)
                                    .padding()
                                    .background(.gray.opacity(0.15))
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                        }
                    }
                }
                
                HStack {
                    TextField("Votre message...", text: $messageText)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .onSubmit {
                            sendMessage(message: messageText)
                            
                        }
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "paperplane.fill")
                    }
                    .font(.system(size:26))
                    .padding(.horizontal,10)
                }
                .padding()
                .navigationBarTitle("Messages", displayMode: .inline)
            }
        }
    }
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter (deadline: .now() + 1) {
            withAnimation {
                messages.append(getBotReponse(message: message))
            }
        }
    }
}

struct ViewMessage_Previews: PreviewProvider {
    static var previews: some View {
        ViewMessage()
    }
}
