//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Emile Wong on 21/4/2021.
//

import SwiftUI

struct SettingsLabelView: View {
  // MARK: PROPERTIES
  var labelText: String
  var labelImage: String
  
  // MARK: BODY
    var body: some View {
      HStack{
        Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        Spacer()
        Image(systemName: labelImage)
      }
    }
}

// MARK: PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
      SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
