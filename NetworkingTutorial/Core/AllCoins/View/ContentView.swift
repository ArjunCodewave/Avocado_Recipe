//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Arjun Rana on 15/03/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = CoinViewModel()
    
    var body: some View {
       
            List{
                ForEach(vm.coins) { coin in
                    HStack{
                        AsyncImage(url: URL(string: coin.image)){
                            image in image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 40, height: 40)
                        
                        
                        VStack(alignment: .leading, spacing: 0){
                            // AsyncImage(url: coin.)
                            Text(coin.name).bold()
                            Text(coin.symbol)
                            
                        }
                        Spacer()
                        Text("$")
                        Text(String(coin.current_price)).italic().bold()
                    }
                }
            
            }
    }
}

#Preview {
    ContentView()
}
