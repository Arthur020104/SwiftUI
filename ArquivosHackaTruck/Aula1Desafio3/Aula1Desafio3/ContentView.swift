//
//  ContentView.swift
//  Aula1Desafio3
//
//  Created by Student04 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var showingAlert: Bool = false
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .background(.white)
                .opacity(0.2)//.mask(Gradient())
            VStack{
                Text("Bem vindo, \(name)!").font(.title)
                
                TextField("Digite aqui", text: $name)
                    .frame(alignment: .center)
                    .multilineTextAlignment(.center)
                  //  .padding()
                Spacer()
                VStack{
                    Image("logo").resizable().scaledToFit().frame(height: 100);
                    Image("truck").resizable().scaledToFit().frame(height: 100);
                }
                //.padding(.top, -300.0)
                Spacer()
                VStack{
                    Button("Entrar") {
                        showingAlert = true
                    }
                    .alert(isPresented: $showingAlert) {
                        
                        Alert(title: Text("ALERTA !"),message: Text("Você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá")))
                    }
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
