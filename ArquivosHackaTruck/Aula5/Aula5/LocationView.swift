//
//  LocationView.swift
//  Aula5
//
//  Created by Student04 on 03/08/23.
//

import Foundation

import SwiftUI
import MapKit

struct LocationView:View {
    var localizacao: Location
    var body: some View {
        VStack{
            Text(localizacao.name+localizacao.flag).font(.largeTitle).padding()
            Text(localizacao.descricao).font(.headline).padding()
            Spacer()
        }
    }

}
