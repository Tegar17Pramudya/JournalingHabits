//
//  RubricView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 17/07/23.
//

import SwiftUI

struct RubricView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Did you said “Good Job” to your kid?")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
                .frame(width: 302, alignment: .topLeading)
            RoundedRectangle(cornerRadius: 5)
                .fill(Color("SecondaryBlue"))
                .frame(width: 304, height: 106)
                .overlay(
                    Text("Yes")
                        .font(Font.custom("SF Pro", size: 32) .weight(.bold))
                        .foregroundColor(.white))
            RoundedRectangle(cornerRadius: 5)
                .fill(Color("SecondaryBlue"))
                .frame(width: 304, height: 106)
                .overlay(
                    Text("No")
                        .font(Font.custom("SF Pro", size: 32) .weight(.bold))
                        .foregroundColor(.white))
            Spacer()
        }
    }
}

struct RubricView_Previews: PreviewProvider {
    static var previews: some View {
        RubricView()
    }
}
