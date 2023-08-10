//
//  ViewModelProject.swift
//  Aula6
//
//  Created by Student04 on 04/08/23.
//

import Foundation

class ViewModelProject : ObservableObject {
    @Published var chars : [Resultado] = []
    
    func fetch(name:String)
    {
        guard let url = URL(string: "https://ll.thespacedevs.com/2.2.0/astronaut/?format=json&search=\(name)") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with:url){[weak self ] data,_,error in
            guard let data = data,error == nil else{
                return
                
            }
            
            do {
                let parsed = try JSONDecoder().decode(apiObj.self,from: data)
                DispatchQueue.main.async {
                    self?.chars = parsed.results!
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
