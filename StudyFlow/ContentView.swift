
//  ContentView.swift
//  StudyFlow
//
//  Created by Hande Naz Kavas on 14.08.2023.
//

import SwiftUI
import UIKit
import CoreData

struct ContentView: View {
    struct Assignment: Identifiable {
        var id: Int
        var subject: String
        var technique: String
        var completed: Int
        var desciription: String
        
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
        .frame(width: 200, height: 140)
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
    func showStatus(hw: Binding<Assignment>) -> some View {
        ZStack(alignment: .leading) {
            VStack {
                Text(hw.wrappedValue.subject)
                    .font(.title3)
                    .bold()
                    .padding()
                    
                Text(hw.wrappedValue.desciription)
                    .font(.body)
                    .padding()
            }
            
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 300, height: 20)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            if hw.wrappedValue.completed > 0 {
                Capsule()
                    .frame(width: CGFloat(hw.wrappedValue.completed) * 3, height: 20)
                    .foregroundColor(colorForCompletion(hw.wrappedValue.completed))
                    .shadow(radius: 2)
            }
        }
        .frame(width: 500, height: 70)
    }

    func completeAssignment(assignment: Binding<Assignment>) {
            assignment.wrappedValue.completed = 100
    }

    func listView(assignment: Binding<Assignment>) -> some View {
        ZStack(alignment: .leading) {
            HStack {
                Text(assignment.wrappedValue.subject)
                    .font(.caption)
                    .bold()
                    .padding()
                Button(action: {
                    completeAssignment(assignment: assignment)
                }) {
                    Text("Completed")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
               Spacer()
            }
            .frame(width: 230)
            
        }
    }
    @State var assignments = [
            Assignment(id: 1, subject: "Study Maths", technique: "Pomodoro", completed: 90, desciription: "Some details"),
            Assignment(id: 2, subject: "Practice CS", technique: "feynman", completed: 50, desciription: "practice for 1hr"),
            Assignment(id: 3, subject: "Study Science", technique: "Mind Maps", completed: 1, desciription: "Study for the test")
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
                                    .frame(width: 290)
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
                        HStack(spacing: 1) {
                            ForEach($assignments) { $assignment in
                                showStatus(hw: $assignment)
                                    .frame(width: 340, height: 100)
                            }
                            
                        }
                    }
                    
                }
                
                Text("")
                VStack(alignment: .leading, spacing: 20.0) {
                    NavigationLink(destination: newActivity()) {
                        Text("Add a new activity")
                            .bold()
                            .padding()
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding()
                    VStack(spacing: 10) {
                        ForEach($assignments) { $assignment in
                            listView(assignment: $assignment)
                                .frame(width: 340, height: 30)
                        }
                    }
                    .frame(width: 230)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                    
                    
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


