//
//  CoinDataService.swift
//  NetworkingTutorial
//
//  Created by Arjun Rana on 17/03/26.
//

import Foundation

class CoinDataService {
    
    
    // 22 check if error
    private let urlstring = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order-market_cap_descsper_page=2&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    func fetchcoin(completion: @escaping([Coin]) -> Void){
        guard let url = URL(string: urlstring) else { return }
        URLSession.shared.dataTask(with: url) { data, responce, error in
            guard let data = data else { return }
            // let dataAsString = String(data: data, encoding: .utf8)
            print(data)
            guard  let coins = try? JSONDecoder().decode([Coin].self, from: data) else {
                print("fail to decode coins")
                return}
            print(coins)
            completion(coins)
            
        }.resume()
        
    }
    
    
}
    
