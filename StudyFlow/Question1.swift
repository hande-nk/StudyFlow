//
//  Question1.swift
//  StudyFlow
//
//  Created by Victoria Buendia on 8/15/23.
//

import SwiftUI

//class GameSettings2: ObservableObject {
//        @Published var answer = ""
//    }
struct Question1: View {
    @EnvironmentObject var settings: GameSettings
    @State var answer = ""
    var body: some View {
            NavigationStack {
                ZStack { //Beginning of zstack
                    Color("lightblue")
                        .ignoresSafeArea()
                    VStack{ //Beginning of VStack
                        //Text("Delete these later on")
                        Text("Please select the subject you would like to build a study plan for.")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Rectangle()
                            .background(.black)
                            .frame(width: 170, height: 40)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 1
                                    answer = "Thank you for your response. Proceed to the next question."
                                }){
                                    Text("Sciences & Maths")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }//button done
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .cornerRadius(26)
                            )
                            .padding()
                        
                        Rectangle()
                            .background(.black)
                            .frame(width: 170, height: 40)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 3
                                    answer = "Thank you for your response. Proceed to the next question."
                                }){
                                    Text("Social Studies       ")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }//button done
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .cornerRadius(26)
                            )
                            .padding()
                        
                        Rectangle()
                            .background(.black)
                            .frame(width: 170, height: 40)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 5
                                    answer = "Thank you for your response. Proceed to the next question."
                                }){
                                    Text("Languages             ")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }//button done
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .cornerRadius(26)
                            )
                            .padding()
                        
                        Rectangle()
                            .background(.black)
                            .frame(width: 170, height: 40)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 7
                                    answer = "Thank you for your response. Proceed to the next question."
                                }){
                                    Text("Arts                          ")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }//button done
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .cornerRadius(26)
                            )
                            .padding()
                        Text(answer)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                            .padding()
                        Spacer()
                            .frame(height: 70)
                        VStack (alignment: .trailing) {
                            HStack{
                                NavigationLink(destination: Question2()) {
                                    Text("Next Question ➡️")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.trailing)
                                    
                                } } }
                        
                        
                    } //End of VStack
                } //End of ZStack
                
            } //End of Navigation Stack
            .environmentObject(settings)
//            .environmentObject(settings2)
        } //End of Class GameSettings Score
    } //End of Class GameSettings Answer
   

struct Question1_Previews: PreviewProvider {
    static var previews: some View {
        Question1().environmentObject(GameSettings())
        
    }
}
