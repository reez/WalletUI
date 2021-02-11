//
//  MMDoubleBedSetupView.swift
//  
//
//  Created by Matthew Ramsden on 2/11/21.
//

import SwiftUI

struct MMDoubleBedIntroView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.bitcoinMyMattress)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                    BitcoinImage(named: "Double bed filled")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Switch security mode to Triple Bed")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .multilineTextAlignment(.center)
                    
                    Text("Improve your wallet security by setting up 2 hardware devices.")
                        .font(.title3)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                    
                    Text("Be aware that you will need to approve each new transaction on a hardware device before you can send it.")
                        .font(.title3)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("You will need 2 hardware devices")
                        .bold()
                        .font(.title3)
                        // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.white))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("We support Coldcard and Cobo Vault.")
                        .font(.title3)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                }
                
                HStack(spacing: 20.0) {
                    BitcoinImage(named: "ColdCard 150h")
                        .foregroundColor(Color(UIColor.systemBackground))
                    BitcoinImage(named: "Cobo Vault 150h")
                        .foregroundColor(Color(UIColor.systemBackground))
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .background(Color(UIColor.white))
                }
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMDoubleBedWarningView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.bitcoinMyMattress)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.purple)
                    BitcoinImage(named: "Wallet filled big")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("This will cost a little bit")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("To switch modes, a new wallet needs to be created. Funds from your old wallet will be transferred over, which incurs transaction fees.")
                        .font(.title3)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .background(Color(UIColor.white))
                }
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMDoubleBedDeviceView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Your new wallet will have 3 keys")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Key 1 will be on this device, as before. You will set up the other 2 keys in the next steps.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 2.0) {
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(UIColor.label), lineWidth: 1)
                                    .frame(width: 50.0, height: 50.0)
                                
                                Image(systemName: "cloud.fill")
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                    .font(.title2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Key 1")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Cloud backup")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(UIColor.label), lineWidth: 1)
                                    .frame(width: 50.0, height: 50.0)
                                
                                Image(systemName: "key.fill")
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                    .font(.title2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Key 2")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Not set up yet")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(UIColor.label), lineWidth: 1)
                                    .frame(width: 50.0, height: 50.0)
                                
                                Image(systemName: "key.fill")
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                    .font(.title2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Key 3")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Not set up yet")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                        }
                        
                        Spacer()
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.all)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                    )
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
                }
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMDoubleBedSetupView_Previews: PreviewProvider {
    static var previews: some View {
        MMDoubleBedIntroView()
            .environment(\.colorScheme, .light)
        MMDoubleBedIntroView()
            .environment(\.colorScheme, .dark)
        MMDoubleBedWarningView()
            .environment(\.colorScheme, .light)
        MMDoubleBedWarningView()
            .environment(\.colorScheme, .dark)
        MMDoubleBedDeviceView()
            .environment(\.colorScheme, .light)
        MMDoubleBedDeviceView()
            .environment(\.colorScheme, .dark)
    }
}
