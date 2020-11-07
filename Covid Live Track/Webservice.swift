//
//  Webservice.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import Foundation


class Webservice {
    
    func getAllPosts(completion: @escaping ([Post]) -> ()){
        
        guard let url = URL(string: "https://api.kawalcorona.com/sembuh") else {
            fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
        
        
    }
    
    
    
}
