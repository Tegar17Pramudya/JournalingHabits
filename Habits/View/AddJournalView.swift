//
//  AddJournalView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 18/07/23.
//

import SwiftUI

struct AddJournalView: View {
    var body: some View {
        VStack (spacing: 20){
            VStack{
                Text("ADD YOUR JOURNAL")
                    .font(.system(size: 17, weight: .regular))
                    .kerning(4.42)
                    .frame(width: 306, alignment: .center)
                HStack{
                    NavigationLink(destination: MealTimeView().navigationBarBackButtonHidden()) {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .frame(width: 148, height: 250)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                            .overlay(
                                Image("Meal Time")
                                    .scaleEffect(0.2)
                                    .frame(width: 148, height: 202))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                    .opacity(0.8)
                                    .frame(width: 110, height: 30)
                                    .overlay(
                                        Text("Meal Time")
                                            .font(.system(size: 17, weight: .medium))
                                            .foregroundColor(.black))
                                    .offset(y:-90))
                            .overlay(
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color("PrimaryBlue"))
                                    .font(.system(size: 40, weight: .regular))
                                    .offset(y:80))
                    }
                    
                    NavigationLink(destination: MealTimeView().navigationBarBackButtonHidden()){
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .frame(width: 148, height: 250)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                            .overlay(
                                Image("Play Time")
                                    .scaleEffect(0.2)
                                    .frame(width: 148, height: 202))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                    .opacity(0.8)
                                    .frame(width: 110, height: 30)
                                    .overlay(
                                        Text("Game Time")
                                            .font(Font.custom("SF Pro", size: 17))
                                            .fontWeight(.medium)
                                            .foregroundColor(.black)
                                    )
                                    .offset(y:-90))
                            .overlay(
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color("PrimaryBlue"))
                                    .font(.system(size: 40, weight: .regular))
                                    .offset(y:80))
                    }
                } //.offset(y:60)
            }
        }
    }
}

struct AddJournalView_Previews: PreviewProvider {
    static var previews: some View {
        AddJournalView()
    }
}
