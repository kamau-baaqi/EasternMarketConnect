//
//  VendorInfo.swift
//  EasternMarket
//
//  Created by John Ray on 2/7/23.
//

import SwiftUI

    struct myGrid: View {
        @State var isFavorited = false
        
        @State var vendor: Vendor
        
        var body: some View {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(20)
                .overlay(
                    VStack {
                        
                        
                        
                        Image(vendor.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(30)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .shadow(radius: 5)
                            .clipped()
                        
                        Button {
                            isFavorited.toggle()
                        } label: {
                            if isFavorited {
                                Image(systemName: "star.fill")
                            } else {
                                Image(systemName: "star")
                            }
                            
                        }
                        .offset(y: -120)
                        .offset(x: -10)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        
                        Text(vendor.name)
                            .offset(y: -30)
                    }
                )
                .padding(10)
                .frame(width: 200, height: 200)
        }
    }
    
    
    struct VendorInforView: View {
        
        //go here to add addiitonal rows/columns
        @State var search = ""
        
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 30),
            GridItem(.flexible()),
            
            
            
        ]
        @State var selectedVendor: Vendor?
        @StateObject var vendor = VendorInfoViewModel()
        
        
        var body: some View {
            
            
            
            NavigationStack {
                
                ZStack {
                    //                Image("VendorBackground")
                    //                    .resizable()
                    //                    .ignoresSafeArea()
                    //                    //.padding(.top, -80)
                    
                    Color.brown
                        .ignoresSafeArea()
                    
                    VStack {
                        
                        
                        ScrollView {
                            
                            
                            
                            
                            
                            
                            // SearchView(text: .constant(""))
                            //.padding(.top, -100)
                            
                            LazyVGrid(columns: columns) {
                                
                                ForEach(vendor.emVendors) { vendor in
                                    
                                    
                                    
                                    myGrid(vendor: vendor)
                                }
                                // }
                                
                            }
                            .navigationTitle("Vendors")
                            
                            
                            //  }
                        }
                    }.searchable(text: $search)
                }
            }
        }
    }
    struct VendorInforView_Previews: PreviewProvider {
        static var previews: some View {
            VendorInforView()
        }
    }
    
