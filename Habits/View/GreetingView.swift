//
//  GreetingView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 17/07/23.
//

import SwiftUI

struct GreetingView: View {
    @State private var greetingText: String = ""
    @State private var currentDate: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text(greetingText)
                //.multilineTextAlignment(.leading)
                .frame(width: 306, alignment: .center)
                .font(.system(size: 36, weight: .bold))
                //.multilineTextAlignment(.leading)
            Text(currentDate)
                .font(.system(size: 20, weight: .regular))
            
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            updateGreetingAndDate()
        }
    }
    
    private func updateGreetingAndDate() {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: Date())
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, d MMMM yyyy"
        currentDate = formatter.string(from: Date())
        
        switch hour {
        case 0..<12:
            greetingText = "Good Morning"
        case 12..<18:
            greetingText = "Good Afternoon"
        default:
            greetingText = "Good Night"
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}

