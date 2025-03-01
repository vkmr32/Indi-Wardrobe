//
//  ContentView.swift
//  IndiWardrobe
//
//  Created by Vishnu Kumar on 2/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem{Image( systemName:"house")
                    }
                ShopView()
                    .tabItem{Image( systemName:"hanger")
                    }
                CartView()
                    .tabItem{
                        Image(systemName: "handbag")
                    }
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.circle")
                    }
            }
    }
}

#Preview {
    ContentView()
}
 
