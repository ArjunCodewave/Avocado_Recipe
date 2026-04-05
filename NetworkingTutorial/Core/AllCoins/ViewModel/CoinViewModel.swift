//
//  CoinViewModel.swift
//  NetworkingTutorial
//
//  Created by Arjun Rana on 15/03/26.
//
import Foundation
import Combine

@MainActor
class CoinViewModel: ObservableObject {
    @Published var coins = [Coin]()
    
    private let service  = CoinDataService()
    init(){
        fetchCoins()
    }
    func fetchCoins(){
        service.fetchcoin{ coins in
            DispatchQueue.main.async {
                self.coins = coins
            }
        }
    }
}

