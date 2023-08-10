//
//  ContentView.swift
//  Aula3Desafio2
//
//  Created by Student04 on 31/07/23.
//

import SwiftUI

struct ResultView : View
{
    var body:some  View
    {
        VStack
        {
            Text("Edilson\nAlmeida\nHacktruck.com.br\nedilsonalmeida__")
                .fontWeight(.light)
                .multilineTextAlignment(.center)
        }
    }
}
struct ResultView1 : View
{
    var body:some  View
    {
        VStack
        {
            Text("Edilson\nAlmeida\nHacktruck.com.br\nedilsonalmeida__")
                .multilineTextAlignment(.center)
        }
    }
}
struct BorderedView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            self.content
        }.border(Color.red,
                 width: 2)
    }
}
struct ResultView3 <Content: View> : View
{
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body:some  View
    {
        VStack
        {
            self.content
        }
    }
}
struct ResultView2: View
{
    @State var nome : String = ""
    var body:some  View
    {
        VStack
        {
            TextField("Digite seu nome", text: $nome)
            Text("Estamos percorrendo um caminho \(nome)")
                .multilineTextAlignment(.leading)
            NavigationLink(destination: ResultView3{
                Text("Volte \(nome)!!")
            }) {
                Text("Acessar Tela")
            }
            
        }
    }
}

struct ContentView: View {
    @State var showSheet : Bool = false;
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: ResultView()) {
                    Text("Modo 1")
                }

                NavigationLink(destination: ResultView2()) {
                    Text("Modo 2")
                }
                Button("Modo 3"){
                        self.showSheet.toggle()
                    }
                    .sheet(isPresented: $showSheet) {
                       NavigationView {    // only here !!
                        ResultView1()
                       }
                    }

            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
