//
//  Icons.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

#if canImport(UIKit)

/// This function returns an Image for a given image name (SwiftUI)
/// - Parameter named: name of image file
/// - Returns: Image from resources
public func BitcoinImage(named: String) -> Image {
    return Image(named, bundle: Bundle.module)
}

/// This function returns a UIImage for a given image name (UIKit)
/// - Parameter named: name of image file
/// - Returns: UIImage from resources
public func BitcoinUIImage(named: String) -> UIImage {
    return UIImage(named: named, in: .module, compatibleWith: nil)!
}

struct IconView: View {
    let named: String
    
    var body: some View {
        
        VStack {
            BitcoinImage(named: named)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(UIColor.label))
            Text(named)
                .font(.caption)
                .foregroundColor(Color(UIColor.bitcoinNeutral5))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct IconsView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                Text("Icons")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "cobo75")
                    IconView(named: "cobo150")
                    IconView(named: "coldcard75")
                    IconView(named: "coldcard150")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "dots-group")
                    IconView(named: "Double bed filled")
                    IconView(named: "Github")
                    IconView(named: "mattress")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "Single bed big")
                    IconView(named: "singlebedsettings-group")
                    IconView(named: "switchtriple-group")
                    IconView(named: "Triple bed big filled")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "Wallet filled big")
                    IconView(named: "trezort75")
                    IconView(named: "trezort150")
                    IconView(named: "trezort300")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "jade75")
//                    IconView(named: "jade150")
//                    IconView(named: "jade300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
//
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "bitbox75")
//                    IconView(named: "bitbox150")
//                    IconView(named: "bitbox300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
//
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "keepkey75")
//                    IconView(named: "keepkey150")
//                    IconView(named: "keepkey300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
//
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "paperwallet75")
//                    IconView(named: "paperwallet150")
//                    IconView(named: "paperwallet300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
                
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "foundation75")
//                    IconView(named: "foundation150")
//                    IconView(named: "foundation300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
//                
//                HStack {
//                    IconView(named: "Wallet filled big")
//                    IconView(named: "cardwallet75")
//                    IconView(named: "cardwallet150")
//                    IconView(named: "cardwallet300")
//                }
//                .padding(.horizontal, .wallet_grid_horizontal_10())
//                .padding(.vertical, .wallet_grid_vertical_20())
                                
                HStack {
                    IconView(named: "Wallet filled big")
                    IconView(named: "seedplate75")
                    IconView(named: "seedplate150")
                    IconView(named: "seedplate300")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconsView()
                .environment(\.colorScheme, .light)
            IconsView()
                .environment(\.colorScheme, .dark)
        }
        
    }
}

#endif
