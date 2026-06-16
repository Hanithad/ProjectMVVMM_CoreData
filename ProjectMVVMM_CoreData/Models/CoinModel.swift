//
//  CoinModel.swift
//  ProjectMVVMM_CoreData
//
//  Created by Hanitha Dhavileswarapu on 6/16/26.
//

import Foundation

//Coin gecko APi Info
//currentHoldings is going to be the how many coins the current user holdings

/*https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 
 {
   "id": "bitcoin",
   "symbol": "btc",
   "name": "Bitcoin",
   "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
   "current_price": 65797,
   "market_cap": 1318769503243,
   "market_cap_rank": 1,
   "fully_diluted_valuation": 1318769503243,
   "total_volume": 27201364396,
   "high_24h": 66895,
   "low_24h": 65409,
   "price_change_24h": -693.805115729265,
   "price_change_percentage_24h": -1.04346,
   "market_cap_change_24h": -13876476190.084,
   "market_cap_change_percentage_24h": -1.04127,
   "circulating_supply": 20043725,
   "total_supply": 20043725,
   "max_supply": 21000000,
   "ath": 126080,
   "ath_change_percentage": -47.81307,
   "ath_date": "2025-10-06T18:57:42.558Z",
   "atl": 67.81,
   "atl_change_percentage": 96933.1772,
   "atl_date": "2013-07-06T00:00:00.000Z",
   "roi": null,
   "last_updated": "2026-06-16T20:55:35.793Z",
   "sparkline_in_7d": {
     "price": [61757.8992907965, 62024.5864857019, 62075.324943781, 61678.1993263762, 61649.1095324126, 61658.2849310878, 61839.7705917835, 66044.0947272867, 65615.2117615455, 65856.9461602299, 65724.7818744783, 65887.3354905345]
   },
   "price_change_percentage_24h_in_currency": -1.04345667722777
 },
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice, marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String
    let atl, atlChangePercentage: Double?
    let atlDate: String
    let lastUpdated: String
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
            case id, symbol, name, image
            case currentPrice = "current_price"
            case marketCap = "market_cap"
            case marketCapRank = "market_cap_rank"
            case fullyDilutedValuation = "fully_diluted_valuation"
            case totalVolume = "total_volume"
            case high24H = "high_24h"
            case low24H = "low_24h"
            case priceChange24H = "price_change_24h"
            case priceChangePercentage24H = "price_change_percentage_24h"
            case marketCapChange24H = "market_cap_change_24h"
            case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
            case circulatingSupply = "circulating_supply"
            case totalSupply = "total_supply"
            case maxSupply = "max_supply"
            case ath
            case athChangePercentage = "ath_change_percentage"
            case athDate = "ath_date"
            case atl
            case atlChangePercentage = "atl_change_percentage"
            case atlDate = "atl_date"
            case lastUpdated = "last_updated"
            case sparklineIn7D = "sparkline_in_7d"
            case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
            case currentHoldings
        }
    
    func currentHoldings(amount: Double) ->CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: athChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: currentHoldings)
    }
    
    var currentHoldingsValue:Double{
        return (currentHoldings ?? 0)*(currentPrice ?? 0)
    }
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
    
}
struct SparklineIn7D: Codable {
    let price: [Double]
}

