//
//  JournalView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 14/07/23.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 0){
                Text("Your Journal")
                    .font(.system(size: 36, weight: .bold))
                    .frame(width: 306, alignment: .leading)
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                
            }
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.clear)
                .frame(width: 306, height: 110, alignment: .leading)
                .overlay(
                    ContentCardView()
                )
        }
    }
}

struct ContentCardView: View {
    var body: some View {
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 89, height: 89)
                    .overlay(
                        Image("ExVideo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 89, height: 89)
                            .cornerRadius(5)
                            .clipped())
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                VStack(alignment: .leading, spacing: 10){
                    Text("Meal Time with Intan")
                        .font(.system(size: 17, weight: .bold))
                    HStack{
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("SecondaryBlue"))
                            .frame(width: 87, height: 22)
                            .overlay(
                                Text("Good job!")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white))
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("SecondaryBlue"))
                            .frame(width: 87, height: 22)
                            .overlay(
                                Text("Reward")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white))
                    
                }
                    HStack(spacing: 20){
                        Text("#Good job!")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Grey"))
                        Text("16 June | 07.00")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Grey"))
                    
                }
            }
        }
    }
}
struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
