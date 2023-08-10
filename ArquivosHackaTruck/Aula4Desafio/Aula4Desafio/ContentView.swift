//
//  ContentView.swift
//  Aula4Desafio
//
//  Created by Student04 on 01/08/23.
//

import SwiftUI


/*struct Artista
{
    var nome: String
    var musicas: Array<Musicas>
}*/

struct ContentView: View {
    
    @State var searchText: String = ""
    @State var songs = [Musica(id: 0, nome: "World Hold On - FISHER Rework", artista: "Bob Sinclair, FISHER, Steve Edwards", image: "https://e-cdn-images.dzcdn.net/images/cover/d392670abba6f2e359fdfcb07505c735/264x264-000000-80-0-0.jpg"),
       Musica(id: 1, nome: "World Hold On - FISHER Rework", artista: "Bob Sinclair, FISHER, Steve Edwards", image: "https://e-cdn-images.dzcdn.net/images/cover/d392670abba6f2e359fdfcb07505c735/264x264-000000-80-0-0.jpg"),
       Musica(id: 2, nome: "World Hold On - FISHER Rework", artista: "Bob Sinclair, FISHER, Steve Edwards", image: "https://e-cdn-images.dzcdn.net/images/cover/d392670abba6f2e359fdfcb07505c735/264x264-000000-80-0-0.jpg"),
           Musica(id: 3, nome: "Innerbloom", artista: "RÜF US DU SOL", image: "https://akamai.sscdn.co/uploadfile/letras/albuns/3/d/c/9/609011511441406.jpg")
    ]
    @State var sugestao = [Sugestao(id: 0, nome: "Nevermind", artista: "Nirvan", image: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-108777-fa16db09cdb1b7f4393ca3dd56a914a5cb09451b.jpg?w=499"),
       Sugestao(id: 1, nome: "Dark Side Of The Moon", artista: "Pink Floyd", image: "https://www.udiscovermusic.com/wp-content/uploads/2017/08/Pink-Floyd-Dark-Side-Of-The-Moon.jpg")]
    
    var searchResults: [Musica] {
    if searchText.isEmpty {
    return songs
    } else {
        return songs.filter { $0.nome.lowercased().contains(searchText.lowercased()) || $0.artista.lowercased().contains(searchText.lowercased()) }
    }
    }
    
    var body: some View {
        
        NavigationStack
        {
            
            ZStack {
                Color.black
                LinearGradient(colors: [.blue,.black], startPoint:.top, endPoint:.center)
                    .ignoresSafeArea()
                ScrollView
                {
                    VStack
                    {
                        VStack
                        {
                            // NavigationLink{
                                
                            
                            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=1000&q=50")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                
                            } placeholder: {
                                Color.gray
                            }
                            .frame(width: 180, height: 180)//.resizable().frame(width:200,height: 200)
                            HStack{Text("HackFM").font(.largeTitle).fontWeight(.semibold).multilineTextAlignment(.leading).padding()
                                Spacer()}
                            HStack{
                                AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=400&q=50")) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 25, height: 25)
                                //AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=40&q=50")!)
                                //.padding(.bottom)
                                Text("HackaSong")
                                    .fontWeight(.semibold)
                                Spacer()
                                // Text(" ")
                            }.padding(.leading, 14.0)
                        }.padding(.bottom, 10.0).padding(.top, 0.0).frame(width: .infinity)
                        
                        
                        //Spacer()//.frame(minHeight: 1, idealHeight: 10, maxHeight: 100).fixedSize()
                        
                        
                            //.navigationTitle("Searchable Example")
                        ScrollView
                        {
                            ForEach(searchResults, id: \.id) { idx in
                                NavigationLink(destination: SongView(song: idx))
                                {
                                    HStack{
                                        
                                        AsyncImage(url: URL(string: idx.image)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder:
                                        {
                                            Color.gray
                                        }
                                        .frame(width: 50, height: 50)
                                        VStack
                                        {
                                            HStack
                                            {
                                                Text(idx.nome).font(.headline).tag(idx.nome)
                                                Spacer()
                                                Image(systemName: "ellipsis")
                                            }
                                            HStack
                                            {
                                                Text(idx.artista).font(.caption).fontWeight(.light).padding(.leading, 2.0)
                                                Spacer()
                                            }
                                            Spacer()
                                            
                                        }
                                        
                                    }
                                }}.padding().searchable(text: $searchText).toolbarColorScheme(.light, for: .navigationBar).toolbarBackground(
                                    .hidden ,for: .navigationBar)

                            }
                      
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                             HStack(spacing: 20) {
                             ForEach(sugestao, id: \.id) {idx in
                             VStack{
                             
                             AsyncImage(url: URL(string: idx.image)) { image in
                             image
                             .resizable()
                             .aspectRatio(contentMode: .fill)
                             
                             } placeholder:
                             {
                             Color.gray
                             }.padding()
                             .frame(width:300, height: 300)
                             VStack
                             {
                             HStack
                             {
                                 Spacer()
                             Text(idx.nome).font(.headline).tag(idx.nome)
                             Spacer()                         }
                             HStack
                             {
                                 Spacer()
                             Text(idx.artista).font(.caption).fontWeight(.light).padding(.leading, 2.0)
                             Spacer()
                             }
                             Spacer()
                         
                         }
                         
                         }
                         
                         }
                         }
                         }
                    }
                }
                
            
            }.foregroundColor(.white)/*.mask(LinearGradient(gradient: Gradient(stops: [
                .init(color: .clear, location: 0),
                .init(color: .black, location: 0.25),
                .init(color: .black, location: 0.75),
                .init(color: .clear, location: 1)
            ]), startPoint: .top, endPoint: .bottom))*/
           /* VStack {
                //make navegation link to song
            }.ignoresSafeArea()
            .background(.black)
            .padding()*/
            
        }.tint(.white)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
