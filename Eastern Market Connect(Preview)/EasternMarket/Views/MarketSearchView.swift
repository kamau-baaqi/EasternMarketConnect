//
//  SearchView.swift
//  EasternMarket
//
//  Created by John Ray on 2/8/23.
//

import SwiftUI

// assuming we are adding a database of ALL vendor names
/* Can we add database of all vendors and allow search for other related terms/tags? (like searching for "cookies" and it pulls up every vendor or store that mentions they have cookies
*/

struct MarketSearchView: View {
        let names = ["Flowers for Dreams", "Mr. Cookies", "MOXY", "Germack"]
        @State private var searchText = ""

        var body: some View {
            NavigationStack {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink {
                            Text(name)
                        } label: {
                            Text(name)
                        }
                    }
                }
                .navigationTitle("Vendors")
                
                
                
            }
            .searchable(text: $searchText)
        }

        var searchResults: [String] {
            if searchText.isEmpty {
                return names
            } else {
                return names.filter { $0.contains(searchText) }
            }
        }
    
    
}

        
 

    
struct MarketSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MarketSearchView()
    }
}
