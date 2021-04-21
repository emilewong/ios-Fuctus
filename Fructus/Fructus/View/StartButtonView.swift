//
//  StartButtonView.swift
//  Fructus
//
//  Created by Emile Wong on 20/4/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        HStack(spacing:8) {
            Button(action: {
                isOnboarding = false
            }, label: {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }) //: BUTTON
            .accentColor(Color.white)
        } //: HStack
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
        )
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
