//
//  DailyAffirmationView.swift
//  Journaling MC3
//
//  Created by Ayla Ainayyah M on 18/07/23.
//

import SwiftUI

struct DailyAffirmationView: View {
    @State private var randomAffirmation: String = "I am grateful for my kids, my partner and my family."
    private let randomAffirmations = [
        "I learn and become a better parent with each passing day.",
        "My child is not giving me a hard time, they are having a hard time, and I can help.",
        "I will breathe and respond calmly in this moment.",
        "I don’t love these struggles but I love my kids.",
        "My child and I are learning as we go.",
        "It’s okay that I had a bad moment or day. This too shall pass.",
        "I can’t control the future, but I can meet its challenges.",
        "I focus on progress, not perfection.",
        "I love my children, no matter what today brings.",
        "My children love me, no matter what today brings.",
        "My children don’t want perfection; they want me to be there.",
        "Admitting things are rotten doesn’t mean I’m giving up.",
        "I view mistakes as opportunities to learn and grow.",
        "Some days are better than others; that doesn’t mean I’m a bad parent.",
        "Tomorrow is a new day.",
        "I give myself permission to set boundaries.",
        "I can adapt to changes in my plans and expectations.",
    ]
    var body: some View {
        VStack{
            Text("DAILY AFFIRMATION")
                .font(.system(size: 17, weight: .regular))
                .kerning(4.42)
                .frame(width: 306, alignment: .center)
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 306, height: 168)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                .overlay(
                    Text(randomAffirmation)
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                        .frame(width: 280)
                        .multilineTextAlignment(.center))
        }
        .onAppear {startUpdatingRandomText()
        }
        
    }
    private func startUpdatingRandomText() {
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            randomAffirmation = randomAffirmations.randomElement() ?? "Oops, something went wrong!"
        }
    }
}

struct DailyAffirmationView_Previews: PreviewProvider {
    static var previews: some View {
        DailyAffirmationView()
    }
}
