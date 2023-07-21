//
//  ResultView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 17/07/23.
//

import SwiftUI

struct ResultView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Meal Time")
                .font(.system(size: 36, weight: .bold))
                .frame(width: 306, alignment: .leading)
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 306, height: 253)
                .overlay(
                    Image("ExVideo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 306, height: 253)
                        .cornerRadius(5)
                        .clipped())
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            VStack(alignment: .leading, spacing: 5){
                Text("Meal with Intan on a Bright Sunny Day")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color.black)
                    .frame(width: 308, alignment: .topLeading)
                Text("17 July / 07.00 - 08.00 / Meal Time")
                .font(.system(size: 17, weight: .semibold))
                
            }
            Text("It’s important to keep the lines of communication open, circle back, and talk about our feelings and move to accountability. “I let you know how important this was to me…”")
                .font(.system(size: 17))
                .frame(width: 306, alignment: .leading)
            VStack(alignment: .leading, spacing: 5){
                Text("You’ve spoken these words:")
                    .font(.system(size: 17, weight: .semibold))
                HStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("SecondaryBlue"))
                        .frame(width: 132, height: 33)
                        .overlay(
                            Text("Good job!")
                                .font(.system(size: 17))
                                .foregroundColor(.white))
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("SecondaryBlue"))
                        .frame(width: 132, height: 33)
                        .overlay(
                            Text("Reward")
                                .font(.system(size: 17))
                                .foregroundColor(.white))
                }
            }
            RoundedRectangle(cornerRadius: 50)
                .fill(Color("PrimaryBlue"))
                .frame(width: 332, height: 55)
                .overlay(
                    Text("Done")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.white))
        }
    }
}
struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
