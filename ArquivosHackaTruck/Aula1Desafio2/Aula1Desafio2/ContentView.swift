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
            Image("Truck")
                .resizable()
                .padding(.top, -80.0)
                .frame(width: 400.0, height: 180.0)
                .foregroundColor(.accentColor).scaledToFit()
            HStack{
                Image("Truck")
                    .resizable()
                    .padding(0.0)
                    .frame(width: 350.0, height: 210.0)
                    .foregroundColor(.accentColor).scaledToFit().overlay(Text("HackTruck ")
                        .foregroundColor(Color.blue)
                        .fontWeight(.heavy).font(.largeTitle)
                        .padding(.top, -60.0)).clipShape(Circle())
            }
            .padding(.vertical, 40.0)
            HStack{
                Text("Maker").foregroundColor(.yellow).font(.title2)
                +
                Text(" Space").foregroundColor(.red).font(.title2)
            }.padding(-50.0).frame(width: 220,height: 200).background(Color.black)
                
//
        }
        .padding(.bottom, -130.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
