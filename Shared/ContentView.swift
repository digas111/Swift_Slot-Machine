//
//  ContentView.swift
//  Shared
//
//  Created by Diogo Ribeiro on 10/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var slot1 = 1
    @State private var slot2 = 2
    @State private var slot3 = 3
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("Slot Machine!")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
            Spacer()
            Text("Credits: \(credits)")
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            HStack{
                Spacer()
                Image("fruit\(slot1)").resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("fruit\(slot2)").resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("fruit\(slot3)").resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button(action: {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot1 == slot3 && slot2 == slot3 {
                    credits += 100
                }
                else {
                    credits -= 5
                }
                
            }, label: {
                Text("Spin")
            })
            // Set padding for all edges
            .padding()
            // Then adjust the left and right padding to be bigger
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
