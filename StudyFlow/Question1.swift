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
            ZStack { //Beginning of zstack
                Color("lightblue")
                    .ignoresSafeArea()
                VStack{ //Beginning of VStack
                    
                    Text("Please select the subject you would like to build a study plan for.")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Button (action: {
                        score += 1
                        answer = "Thank you for your response! Please proceed to the next question"
                    }) {
                        Text("Science and Math")
                    }
                    .padding()
                    .background(Capsule().foregroundColor(.white))
                    .border(.black, width: 2)
                    .cornerRadius(14)
//                    .background(Capsule()
//                        .foregroundColor(.black))
//                    .buttonStyle(.borderedProminent)
//                        .tint(Color("lightblue"))
                    Button (action: {
                        score += 3
                        answer = "Thank you for your response! Please proceed to the next question"
                    }) {
                        Text("Social Studies")
                    }
                    .padding()
                    
                    Button (action: {
                        score += 5
                        answer = "Thank you for your response! Please proceed to the next question"
                    }) {
                        Text("Languages")
                    }
                    .padding()
                    
                    Button (action: {
                        score += 7
                        answer = "Thank you for your response! Please proceed to the next question"
                    }) {
                        Text("Social Studies")
                    }
                    .padding()
                    
                    Text(answer)
                        .padding()
                    
                } //End of VStack
            } //End of ZStack
            
        }
        
    }
}

struct Question1_Previews: PreviewProvider {
    static var previews: some View {
        Question1()
    }
}
