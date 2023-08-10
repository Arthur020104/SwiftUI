//
//  ViewModel.swift
//  Aula6
//
//  Created by Student04 on 07/08/23.
//

import SwiftUI
import Foundation

struct ContentViewAstro: View {
    var teste : Resultado
    // var searchResults: [Resultado] {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                        VStack{
                            HStack{Text(teste.name!)
                                    .font(.largeTitle)
                                .fontWeight(.bold)}
                            HStack{
                                if let unwrapped = teste.date_of_birth
                                {
                                    Text("Data de Nascimento: \(teste.date_of_birth!)").padding().font(.title3)
                                }
                                else
                                {
                                    Text("Data de Nascimento: Não informada").padding().font(.title3)
                                }
                                if let unwrapped = teste.date_of_death
                                {
                                    Text("Data da Morte: \(teste.date_of_death!)").padding().font(.title3)
                                }
                                else
                                {
                                    Text("Data da Morte: Vivo").padding().font(.title3)
                                }
                                
                            }
                            Text("Status: \(teste.status!.name!)").padding().font(.title3)
                            HStack
                            {
                                Text("Agencia: \(teste.agency!.name!)").padding().font(.title3)
                                
                            }
                            Text("Biografia: \(teste.bio!)")
                                .font(.title3)
                            Spacer()
                            
                        }
                    
                    
                }}
        }
    }
}

