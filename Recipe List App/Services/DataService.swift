//
//  DataService.swift
//  Recipe List App
//
//  Created by Vikas Nayal on 19/6/21.
//

import Foundation

class DataService {
    
   static  func getLocalData() -> [Recipe] {
    
    //parse local json file
    
    
    //get a url of json file
    
        let pathstring = Bundle.main.path(forResource: "recipes", ofType: "json")
    
    //check if pathstring is not nill
        guard pathstring != nil else {
            return [Recipe]()
            
        }
    //create a url object
    
        let url = URL(fileURLWithPath: pathstring!)
        
    //create data object
        do {
        
            //Data(Content of) throw error so do/catch required
        let data = try Data(contentsOf: url)
        
            //decode teh data with JSON decoder
            
            let decoder = JSONDecoder()
            
            do {
                let recipeData =  try decoder.decode([Recipe].self, from: data)
                
                //Add unquie ID's
                
                for r in recipeData {
                    
                    r.id = UUID()
                    
                }
                
                //Return recipies
                
                return recipeData
            }
            
            catch {
                //error with parsing json
                print (error)
            }
           

            
            
        }
        
        catch {
            
            //error with getting data
            print (error)
        }
    
        return [Recipe]()
    }
    
    
    
}
