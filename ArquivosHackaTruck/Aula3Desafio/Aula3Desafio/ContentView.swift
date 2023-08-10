//
//  ContentView.swift
//  Aula3Desafio
//
//  Created by Student04 on 31/07/23.
//

import SwiftUI
struct HomeView: View {
    var lista = Array(1...50)
    var body: some View {
        
        List{
            ForEach(lista, id: \.self)
            {
                i in Text("Item \(i)")
            }
        }
    }
}
struct SearchView: View {
    var body: some View {
        VStack
        {
            Text("Hello, Hackatruck!")
            .frame(width: 270,height: 300)
            .background(.blue)
        }
    }
}
struct Messages_View: View
{
    var body:some View
    {
        Text("Messages View")
    }
}
struct Profile_View: View
{
    var body:some View
    {
        Text("Profile View")
    }
}
struct Scroll_View: View {
    var body: some View {
        ScrollView {
            VStack{
                Image(systemName: "hare.fill").resizable().scaledToFit().frame(width: 260,height:180).padding()
                Image(systemName: "tortoise.fill").resizable().scaledToFit().frame(width: 260,height:180).padding()
                Image(systemName: "pawprint.fill").resizable().scaledToFit().frame(width: 260,height:180).padding()
        
                Image(systemName: "ant.fill").resizable().scaledToFit().frame(width: 260,height:180).padding()
            }
            }
    }
}
//sstruct
struct ContentView: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "figure.stand.line.dotted.figure.stand")
                    }
                    .badge(2)
                SearchView()
                    .tabItem {
                        Label("", systemImage: "magnifyingglass")
                    }
                Scroll_View()
                    .tabItem {
                        Label("", systemImage: "photo")
                    }
                Messages_View()
                    .tabItem {
                        Label("Messages",systemImage: "")
                    }
                    .badge("!")
                Profile_View()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
                    
                   // .badge("NEW")
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
