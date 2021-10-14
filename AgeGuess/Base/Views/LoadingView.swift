//
//  LoadingView.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-13.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String
    var body: some View {
        
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Loading History")
    }
}
