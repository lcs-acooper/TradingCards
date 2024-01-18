//
//  ContentView.swift
//  TradingCards
//
//  Created by  Adam-James  Cooper on 2024-01-18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var names = ["Example#1", "Example#2", "Example#3", "Example#4", "Example#5"]
    
    var body: some View {
        ScrollView {
            ForEach(names, id: \.self) { name in
                NavigationView(content: {
                    NavigationLink(
                        destination: CardInfo()
                    ) {
                        HStack {
                            Text(name)
                                .foregroundStyle(.primary)
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.green)
                            Spacer()
                            
                            
                        }
                    }
                })
                
                .padding()
                .background(Color.white.shadow(.drop(radius: 1, y: 1)),
                            in: RoundedRectangle(cornerRadius: 8))
                .padding(.bottom, 4)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}


