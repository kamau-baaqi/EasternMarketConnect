//
//  practice search view.swift
//  EasternMarket
//
//  Created by Ashley Hatcher on 2/9/23.
//

import SwiftUI

struct practice_search_view: View {
 
      @State private var searchText = ""
         
         var body: some View {
             NavigationStack {
                 Text("Searching for \(searchText)")
                    
             }
             .searchable(text: $searchText, prompt: "Look for something")
         }
         
     
         
         /*
         NavigationView {
             Form {
                 Section {
                     Text("Hello, World!")
                 
                     
                 }
             }
             .navigationTitle("Search")
         }
         */
}

struct practice_search_view_Previews: PreviewProvider {
    static var previews: some View {
        practice_search_view()
    }
}
