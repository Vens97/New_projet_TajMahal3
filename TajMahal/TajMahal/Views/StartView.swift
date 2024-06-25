//  StartView.swift
//  TajMahal
//
//  Created by Altieri on 19/06/2024.
//

import SwiftUI

struct StartView: View {
    @State private var showWelcomeView: Bool = false // Variable d'état pour contrôler l'affichage de WelcomeView
    
    var body: some View {
        ZStack {
            Color.CustomRed
                .edgesIgnoringSafeArea(.all)
            
            Image("Logo")
                .onAppear {
                    self.showWelcomeView = true
                }
                .fullScreenCover(isPresented: $showWelcomeView) {
                    WelcomeView()
                }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}


extension Color {
    static let CustomRed = Color(red: 0.8, green: 0.2, blue: 0.2)
}
