//
//  ContentView.swift
//  Fructus
//
//  Created by Emile Wong on 19/4/2021.
//

import SwiftUI

struct ContentView: View {
  // MARK: PROPERTIES
  var fruits: [Fruit] = fruitsData
  @State private var isShowingSettings: Bool = false
    
  // MARK: BODY
  var body: some View {
    NavigationView{
      List{
        ForEach(fruits.shuffled()) {
          item in
          NavigationLink(
            destination: FruitDetailView(fruit: item))
            {
                FruitRowView(fruit: item)
                    .padding(.vertical, 4)
            }
        }
      }//: List
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing:
          Button(action:{
            isShowingSettings = true
          }) {
          Image(systemName: "slider.horizontal.3")
          } //: BUTTON
          .sheet(isPresented: $isShowingSettings, content: {
            SettingsView()
          })
      )
    }//: Navigation
    .navigationViewStyle(StackNavigationViewStyle())
  }
}
// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView(fruits: fruitsData)
  }
}
