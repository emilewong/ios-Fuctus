//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Emile Wong on 21/4/2021.
//

import SwiftUI

struct SettingsRowView: View {
  // MARK: PROPERTIES
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  // MARK: BODY
    var body: some View {
      VStack{
        Divider().padding(.vertical)
        HStack{
          Text(name).foregroundColor(Color.gray)
          Spacer()
          if (content != nil) {
            Text(content!)
          } else if (linkLabel != nil && linkDestination != nil) {
            Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
            Image(systemName: "arrow.up.right.square")
                .foregroundColor(.pink)
          } else {
            EmptyView()
          }
          
        }//: HSTACK
      }//: VSTACK
    }
}

// MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
      SettingsRowView(name: "Developer", content: "John / Jane")
          .previewLayout(.fixed(width: 375, height: 60))
          .padding()
    }
}
