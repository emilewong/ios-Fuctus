//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Emile Wong on 20/4/2021.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
            } //: HSTACK
            .font(.footnote)
        } //: GROUPBOX
    }
}

// MARK: PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
