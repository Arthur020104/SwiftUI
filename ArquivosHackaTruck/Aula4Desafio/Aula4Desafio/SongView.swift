//
//  SongView.swift
//  Aula4Desafio
//
//  Created by Student04 on 01/08/23.
//

//import Foundation
import SwiftUI

struct SongView : View
{
  //  @Binding
    var song : Musica
    var body: some View
    {
        ZStack
        {
            Color.black
            LinearGradient(colors: [.blue,.black], startPoint:.top, endPoint:.center)
                .ignoresSafeArea()
            
            VStack{
                VStack
                {
                    AsyncImage(url: URL(string: song.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    } placeholder:
                    {
                        Color.gray
                    }
                    .frame(width: 150, height: 150)
                    VStack
                    {
                        HStack
                        {
                            Spacer()
                            Text(song.nome).font(.headline).tag(song.nome)
                            Spacer()
                        }
                        HStack
                        {
                            Spacer()
                            Text(song.artista).font(.caption).fontWeight(.light).padding(.leading, 2.0)
                            Spacer()
                        }
                        
                    }
                }.padding()
                HStack
                {
                    //Spacer()
                    Image(systemName: "shuffle").resizable().frame(width: 30,height: 30).padding()
                   // Spacer()
                    Image(systemName: "backward.end.fill").resizable().frame(width: 35,height: 35).padding()
                   // Spacer()
                    Image(systemName: "play.fill").resizable().frame(width: 50,height: 50).padding()
                   // Spacer()
                    Image(systemName: "forward.end.fill").resizable().frame(width: 35,height: 35).padding()
                   // Spacer()
                    Image(systemName: "repeat").resizable().frame(width: 30,height: 30).padding()
                    //Spacer()
                    
                }
                .padding()
               // Spacer()
            }
        }.foregroundColor(.white)
    }
}
