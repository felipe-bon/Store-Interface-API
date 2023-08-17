//
//  ViewModel.swift
//  API
//
//  Created by Student07 on 04/08/23.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var produtos: [Produto] = []
    
    func fetch(){
        guard let url = URL(string: "https://fakestoreapi.com/products")else{
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in guard let data = data, error == nil else{
            return
        }
            do{
                let parsed = try JSONDecoder().decode([Produto].self, from: data)
                
                DispatchQueue.main.async {
                    self?.produtos = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
