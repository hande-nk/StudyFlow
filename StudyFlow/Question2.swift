//
//  Question2.swift
//  StudyFlow
//
//  Created by Victoria Buendia on 8/15/23.
//

import SwiftUI

struct Question2: View {
    @EnvironmentObject var settings: GameSettings
    @State var answer2 = ""
    var body: some View {
        NavigationStack {
            ZStack { //Beginning of zstack
                Color("lightblue")
                    .ignoresSafeArea()
                VStack{ //Beginning of VStack
                    //Text("Delete this later on")
                    Text("Please select the option that describes you best.")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Rectangle()
                        .background(.black)
                            .frame(width: 205, height: 56)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 1

                                answer2 = "Thank you for your response. Proceed to the next question."
                                    }){
                            Text(" I learn best by                  teaching others")
                                .font(.system(size: 15))
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
                            .frame(width: 205, height: 56)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 3

                                answer2 = "Thank you for your response. Proceed to the next question."
                                    }){
                            Text("I can't focus much   &      procrastinate")
                                .font(.system(size: 15))
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
                            .frame(width: 205, height: 56)
                            .cornerRadius(26)
                            .overlay(
                                Button(action:{
                                    settings.score += 7

                                answer2 = "Thank you for your response. Proceed to the next question."
                                    }){
                            Text("Once I learn content I      forget it soon after")
                                .font(.system(size: 15))
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
                        .frame(width: 205, height: 56)
                        .cornerRadius(26)
                        .overlay(
                            Button(action:{
                                settings.score += 3
                                answer2 = "Thank you for your response. Proceed to the next question."
                            }){
                        Text("I need a deeper undestanding of content")
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                            } //button done
                                .buttonStyle(.borderedProminent)
                                .tint(.white)
                                .cornerRadius(26)
                                )
                                .padding()
                    Text(answer2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding()
                    Spacer()
                        .frame(height: 70)
                    VStack (alignment: .trailing) {
                        HStack{
                            NavigationLink(destination: Question3()) {
                                Text("Next Question ➡️")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.trailing)
                                
                            } } }
                } //End of VStack
                
            }//End of ZStack
        } //End of Navigation Stack
        .environmentObject(settings)
        
    }
}

struct Question2_Previews: PreviewProvider {
    static var previews: some View {
        Question2().environmentObject(GameSettings())
    }
}
