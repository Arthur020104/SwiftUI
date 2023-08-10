//
//  apiObj.swift
//  Aula6
//
//  Created by Student04 on 04/08/23.
//

import Foundation
import SwiftUI

struct apiObj: Decodable, Hashable
{  
    var results : [Resultado]?
}
struct Resultado: Decodable, Hashable
{
    var status: Status?
    var date_of_birth : String?
    var date_of_death:String?
    var name: String?
    var agency: Agency?
    var bio : String?
}
struct Agency: Decodable, Hashable
{
    var name:String?
}

struct Status:Decodable, Hashable
{
    var name: String?
}

