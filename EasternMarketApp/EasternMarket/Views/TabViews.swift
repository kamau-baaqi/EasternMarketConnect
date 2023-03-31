//
//  TabView.swift
//  EasternMarket
//
//  Created by John Ray on 2/8/23.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            EventsView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MapView()
                .tabItem {
                    Label("Market Map", systemImage: "map")
                }
            MarketSearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            VendorInforView()
                .tabItem {
                    Label("Vendor List", systemImage: "person.2.square.stack")
                }
            ProfileView()
                .tabItem {
                    Label("My Stuff", systemImage: "person")
                }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
