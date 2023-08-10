//
//  Location.swift
//  Aula5
//
//  Created by Student04 on 03/08/23.
//

import Foundation
import MapKit

struct Location:Identifiable
{
    let id = UUID()
    let name: String
    let coordinate: MKCoordinateRegion
    let flag : String
    let descricao: String
}
