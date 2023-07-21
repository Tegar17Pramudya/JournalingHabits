//
//  ContentView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Image("Dashboard")
                    .scaleEffect(0.7)
                    .offset(y:-80)
                Text("Hello.")
                    .font(.system(size: 34, weight: .bold))
                    .offset(y:-80)
                Text("Start your journey with us. Record, Listen, and Learn.")
                    .frame(width: 200)
                    .offset(y:-60)
                NavigationLink(destination: MainMenu().navigationBarBackButtonHidden()){
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color("PrimaryBlue"))
                    .frame(width: 332, height: 55)
                    .overlay(
                        Text("Continue")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white))
                    .offset(y:0)
                }
            }
        }
    }
}

struct MainMenu: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            JournalView()
                .tabItem {
                    Image(systemName: "text.insert")
                    Text("Your Journal")
                }
                .tag(1)
        }
        .accentColor(Color(red: 0.237, green: 0.34, blue: 0.52))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
