//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Vikas Nayal on 19/6/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published  var recipes = [Recipe]()
    
    init() {
        
        //create an instance of dataservice and get data
        
    /*    Method 1
        let service = DataService()
        service.getLocalData()      */
        
        self.recipes = DataService.getLocalData()
        
        // Set recipe properties
        
        
    }
    
    
}
