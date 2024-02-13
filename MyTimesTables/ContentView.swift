//
//  ContentView.swift
//  MyTimesTables
//
//  Created by Isabel Nelson on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var upTo = 2
    @State private var numberOfQuestions = 0
    
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
                .padding([.top, .bottom], 50)
                
                VStack {
                    Text("Select number of questions:")
                        .font(.body)
                        .frame(alignment: .leading)
                    
                    Picker("Number of questions", selection: $numberOfQuestions) {
                        ForEach([5, 10, 20], id: \.self) { number in
                            Text("\(number)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                .padding([.leading, .trailing], 50)
            }
            .navigationTitle("MyTimesTables")
        }
    }
}

#Preview {
    ContentView()
}
