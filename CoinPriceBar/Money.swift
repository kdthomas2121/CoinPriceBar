//
//  Money.swift
//  CoinPriceBar
//
//  Created by Thanh Pham on 12/12/17.
//  Copyright © 2017 Thanh Pham. All rights reserved.
//

typealias FreedomMoney = Coin

enum Coin: String {
  case BTC
  case NANO
  case ETH
  case NAV
  case XRP
  case IOTA
}

enum FiatMoney: String {
  case USD
}

extension Coin {

  func priceProvider() -> CoinPriceProvider {
    switch self {
    case .XRP, .IOTA, .NAV, .NANO: return BinancePriceProvider()
    default: return CoinbasePriceProvider()
    }
  }
}

extension Coin {

  func unicode() -> String {
    switch self {
    case .BTC: return "₿"
    case .ETH: return "ETH"
    case .XRP: return "XRP"
    case .IOTA: return "IOTA"
    case .NANO: return "NANO"
    case .NAV: return "NAV"

    }
  }

  func color() -> NSColor {
    switch self {
    case .BTC: return NSColor(displayP3Red: 244 / 255, green: 180 / 255, blue: 69 / 255, alpha: 1)
    case .ETH: return NSColor(displayP3Red: 115 / 255, green: 123 / 255, blue: 182 / 255, alpha: 1)
    case .NANO: return NSColor(displayP3Red: 73 / 255, green: 144 / 255, blue: 224 / 255, alpha: 1)
    case .XRP: return NSColor(displayP3Red: 62 / 255, green: 139 / 255, blue: 192 / 255, alpha: 1)
    case .IOTA: return NSColor(displayP3Red: 227 / 255, green: 227 / 255, blue: 227 / 255, alpha: 1)
    case .NAV: return NSColor(displayP3Red: 169 / 255, green: 59 / 255, blue: 187 / 255, alpha: 1)
    }
  }
}
