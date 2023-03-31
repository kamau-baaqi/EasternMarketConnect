//
//  ProfileView.swift
//  EasternMarket
//
//  Created by John Ray on 2/8/23.
//

import SwiftUI

struct myCell: View {
    var name: String
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .cornerRadius(30)
            .padding()
    }
}


struct ProfileView: View {
    let column: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Image("MyMarketBackground")
                        .resizable()
                        .frame(width: 400, height: 850)
                        .ignoresSafeArea(.all)
                        .padding(.top, -130)
                   
                    LazyVGrid(columns: column) {
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        myCell(name: "Favorites", imageName: "ProfileCells")
                        
                    }
                }
            }
            .navigationTitle("My Market")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
