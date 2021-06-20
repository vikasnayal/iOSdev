//
//  ContentView.swift
//  Recipe List App
//
//  Created by Vikas Nayal on 18/6/21.
//

import SwiftUI

struct RecipeListView: View {
    
   @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        
                        //MARK : Row Item
                        HStack(spacing: 20.0) {
                            
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5.0)
                            Text(r.name)
                            }
                    })
                
            }.navigationBarTitle("All Recipies")
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
