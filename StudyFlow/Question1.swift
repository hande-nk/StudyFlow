//
//  Question1.swift
//  StudyFlow
//
//  Created by Victoria Buendia on 8/15/23.
//

import SwiftUI

struct Question1: View {
@State var score = 0
@State private var answer = ""
    var body: some View {
        NavigationStack {
            VStack{
                Text("Please select the subject you would like to build a study plan for.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button (action: {
                score += 1
                answer = "Thank you for your response! Please proceed to the next question"
                }) {
                Text("Science and Math")
                }
                .padding()
                Text(answer)
                .padding()
                
                Button (action: {
                score += 3
                answer = "Thank you for your response!"
                }) {
                Text("Social Studies")
                }
                .padding()
                Text(answer)
                .padding()

            } //End of VStack
            
        }
        
    }
}

struct Question1_Previews: PreviewProvider {
    static var previews: some View {
        Question1()
    }
}
