//
//  ContentView.swift
//  Aula_1
//
//  Created by Student04 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("truck")
                .resizable()
                .frame(width: 350.0, height: 210.0)
                .foregroundColor(.accentColor).scaledToFit()
            Text("HackTruck ")
               .foregroundColor(Color.blue)
               .fontWeight(.heavy).font(.title2)
            +
           Text("\nMaker ")
               .foregroundColor(Color.yellow)
               .fontWeight(.heavy)
            +
            Text("Space ")
                .foregroundColor(Color.red)
                .fontWeight(.heavy)
                
//
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
