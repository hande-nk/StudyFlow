//
//  Question1.swift
//  StudyFlow
//
//  Created by Victoria Buendia on 8/15/23.
//

import SwiftUI

struct Question1: View {
    var score = 0
    var body: some View {
        NavigationStack {
            VStack{
                Text("Please select the subject you would like to build a study plan for.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                NavigationLink(destination: Question2()) {
                    Text("Science and Math")
                }
                .padding()
                NavigationLink(destination: Question2()) {
                    Text("Social Studies")
                }
                .padding()
                NavigationLink(destination: Question2()) {
                    Text("Languages")
                }
                .padding()
                NavigationLink(destination: Question2()) {
                    Text("Arts")
                }
            }
            
        }
        
    }
}

struct Question1_Previews: PreviewProvider {
    static var previews: some View {
        Question1()
    }
}
