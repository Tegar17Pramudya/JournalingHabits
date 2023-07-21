//
//  HomeView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 14/07/23.
//

import SwiftUI

struct HomeView: View {
    @State private var isModalVisible = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack (spacing:20){
                    GreetingView()
                    AddJournalView()
                    DailyAffirmationView()
                    DailyAffirmationView()
                    DailyAffirmationView()
                    DailyAffirmationView()
                }
               
            }
        }
    }
}

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(Color("PrimaryBlue"))
                .imageScale(.large)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
