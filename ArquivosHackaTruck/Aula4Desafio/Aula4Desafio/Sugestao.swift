//
//  Sugestao.swift
//  Aula4Desafio
//
//  Created by Student04 on 01/08/23.
//

import Foundation


struct Sugestao: Identifiable
{
    var id: Int
    var nome: String
    var artista: String
    var image: String
    
    
}
/*
var searchResults: [Musica] {
if searchText.isEmpty {
return songs
} else {
return songs.filter { $0.nome.contains(searchText) }
}
}
*/
/*.searchable(text: $searchText)
{
    ForEach(searchResults)
    { result in
        NavigationLink(destination: SongView(song: result))
        {
            Text("Are you looking for \(result.nome)?").searchCompletion(result)
        }
    }
}*/
