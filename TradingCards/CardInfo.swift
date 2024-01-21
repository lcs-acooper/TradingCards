//
//  CardInfo.swift
//  TradingCards
//
//  Created by  Adam-James  Cooper on 2024-01-18.
//

import SwiftUI

struct CardInfo: View {
    var body: some View {
       ZStack {
           // rectangle background blue
           Rectangle()
               .foregroundColor(.blue)
               .ignoresSafeArea()
           
           // rectangle blue
           VStack {
               ZStack {
                   Rectangle()
                       .foregroundColor(.red)
                       .cornerRadius(20)
                   .padding(20)
                   
                   //rectangle white
                   Rectangle()
                       .foregroundColor(.green)
                       .cornerRadius(20)
                       .padding(40)
                   
                   Image("Example")
                       .resizable()
                       .scaledToFit()
                       .cornerRadius(20)
                       .padding(60)
                      
                       
               }
               ZStack {
                   VStack {
                       Text("Card Stats")
                           .foregroundStyle(.white)
                           .font(.largeTitle)
                       Spacer()
                   }
                   
                   Text("Chacteristic")
                   
               }
               Spacer()
               
              // text
               
          
              
           }
       }
       .ignoresSafeArea()

    }
}

#Preview {
    CardInfo()
}
