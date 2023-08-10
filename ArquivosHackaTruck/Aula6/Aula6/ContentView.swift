//
//  ContentView.swift
//  Aula6
//
//  Created by Student04 on 04/08/23.
//

import SwiftUI



struct ContentView: View {
    @StateObject var lista = ViewModelProject()
    @State var name : String = ""
    @State var changeName = false
   // var searchResults: [Resultado] {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    Button("Button title") {
                        changeName.toggle()
                        
                    }
                    VStack{
                    ForEach(lista.chars, id: \.self) { teste in
                        
                            NavigationLink(destination: ContentViewAstro(teste: teste))
                            {
                                HStack{Text(teste.name!)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Spacer()
                                    Text("Status: \(teste.status!.name!)").padding().font(.caption)
                                }
                            }.foregroundColor(.black).background(.gray)
                        }.searchable(text: $name).toolbarColorScheme(.dark, for: .navigationBar).toolbarBackground(
                            .hidden ,for: .navigationBar)
                    }
                    
                }.onChange(of: changeName){ bool in lista.fetch(name:name)
                    
                }/*.onAppear(){
                    lista.fetch(name:name)
                }*/
                .padding()
            }}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
