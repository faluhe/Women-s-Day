//
//  ContentView.swift
//  Women'sDay
//
//  Created by Ismailov Farrukh on 08/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("tulip")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250, alignment: .center)
                    .padding()

                Text("Happy Women's Day!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.purple)
                    .shadow(color: .gray, radius: 4, x: 0, y: 4)
            }
            ParticleEmitterView()
        }
        .padding()
        .background(.bg)

    }
}

#Preview {
    ContentView()
}

