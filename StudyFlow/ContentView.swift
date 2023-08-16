//
//  ContentView.swift
//  StudyFlow
//
//  Created by Hande Naz Kavas on 14.08.2023.
//

import SwiftUI
import UIKit

struct ContentView: View {
    class Assignment {
        var id = 0
        var subject = ""
        var technique = ""
        var completed = 0
        var desciription = ""
        
        init(id: Int = 0, subject: String = "", technique: String = "", completed: Int = 0, desciription: String = "") {
            self.id = id
            self.subject = subject
            self.technique = technique
            self.completed = completed
            self.desciription = desciription
        }
        
    }
    func seeAct(hw: Assignment) -> some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundColor(Color.black)
                .frame(width: 300, height: 140)
                .cornerRadius(26)
                .shadow(radius: 5)
                .padding()
            
            
            VStack(alignment: .leading) {
                Text(hw.subject)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                Text(hw.desciription)
                    .foregroundColor(.white)
                    .font(.body)
                    .padding()
                
            }
            .padding()
            
        }
        .frame(width: 300, height: 140)
    }

    func colorForCompletion(_ completion: Int) -> Color {
        switch completion {
        case ..<50:
            return .red
        case 50..<60:
            return .orange
        case 60..<80:
            return .yellow
        default:
            return .green
        }
    }
    func showStatus(hw: Assignment) -> some View {
        ZStack(alignment: .leading) {
            VStack{
                Text(hw.subject)
                    .font(.title3)
                    .bold()
                    
                Text(hw.desciription)
                    .font(.body)
                    .padding()
            }
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 20)
                    .cornerRadius(10)
                    .shadow(radius: 5)

                
                if hw.completed > 0 {
                    Capsule()
                        .frame(width: CGFloat(hw.completed) * 3, height: 20)
                        .foregroundColor(colorForCompletion(hw.completed))
                        .shadow(radius: 2)
                        
                }
            
        }
        .frame(width: 300, height: 70)
    }

    var assignments = [
        Assignment(id: 1, subject:"Study Maths", technique: "Pomodoro", completed: 90, desciription: "Some details"),
        Assignment(id: 2, subject: "Practice CS", technique: "feynman", completed: 50, desciription: "practice for 1hr"),
        Assignment(id: 1, subject:"Study Maths", technique: "Pomodoro", completed: 1, desciription: "Some details"),
    ]
    var body: some View {
        ZStack{
            Color(uiColor: UIColor(red: 255/255, green: 234/255, blue: 199/255, alpha: 1))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    Image("img")
                        .resizable()
                        .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                        
                    Spacer()
                    Text("")
                    
                }
                
                HStack{
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(assignments, id: \.id) { assignment in seeAct(hw: assignment)
                                    .frame(width: 320)
                            }
                            .padding()
                        }
                    }
                    
                }
                Text("Your Tasks")
                    .font(.title)
                    .bold()
                    .padding()
                HStack{
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(assignments, id: \.id) { assignment in showStatus(hw: assignment)
                                    .frame(width: 320)
                            }
                            .padding()
                        }
                    }
                    
                }
                Spacer()
                Text("")
            }
            VStack(alignment: .leading, spacing: 20.0){
                
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


