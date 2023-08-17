//
//  Question3.swift
//  StudyFlow
//
//  Created by Victoria Buendia on 8/17/23.
//

import SwiftUI

struct Question3: View {
    @EnvironmentObject var settings: GameSettings
    @State var answer3 = ""
    var body: some View {
        NavigationStack {
            /*@START_MENU_TOKEN@*/Text("Content")/*@END_MENU_TOKEN@*/
        } //End of nav stack
        .environmentObject(settings)
    }
}

struct Question3_Previews: PreviewProvider {
    static var previews: some View {
        Question3().environmentObject(GameSettings())
    }
}
