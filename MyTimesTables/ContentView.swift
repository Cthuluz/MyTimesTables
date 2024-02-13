//
//  ContentView.swift
//  MyTimesTables
//
//  Created by Isabel Nelson on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var upTo = 2
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Stepper("Select maximum times table:", value: $upTo, in: 2...12)
                        .padding(.leading, 50)
                        .padding(.trailing, 20)
                    Text("\(upTo)")
                        .padding(.trailing, 50)
                }
            }
            .navigationTitle("MyTimesTables")
        }
    }
}

#Preview {
    ContentView()
}
