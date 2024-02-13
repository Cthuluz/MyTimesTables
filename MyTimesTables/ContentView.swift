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
    
    // Color pallete
    @State private var colorDark = Color(red: 33/255, green: 25/255, blue: 81/255)
    @State private var colorLight = Color(red: 240/255, green: 243/255, blue: 255/255)
    @State private var colorBrightGreen = Color(red: 21/255, green: 245/255, blue: 186/255)
    @State private var colorBrightPurple = Color(red: 131/255, green: 111/255, blue: 255/255)
    
    var body: some View {
        NavigationStack {
            ZStack {
                colorBrightGreen
                
                colorLight
                    .frame(maxWidth: 350, maxHeight: 300)
                    .opacity(0.8)
                    .cornerRadius(20)
                
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
                    
                    NavigationLink(destination: GamePlayView(upTo: $upTo, numberOfQuestions: $numberOfQuestions)) {
                        Text("Start")
                    }
                    .padding([.top, .bottom], 50)
                    .frame(alignment: .leading)
                    .buttonStyle(.bordered)
                    .tint(colorBrightPurple)
                }
                .navigationTitle("MyTimesTables")
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
