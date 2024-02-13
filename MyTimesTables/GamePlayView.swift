//
//  GamePlayView.swift
//  MyTimesTables
//
//  Created by Isabel Nelson on 2/13/24.
//

import SwiftUI

struct GamePlayView: View {
    @Binding var upTo: Int
    @Binding var numberOfQuestions: Int

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GamePlayView(upTo: .constant(2), numberOfQuestions: .constant(1))
}
