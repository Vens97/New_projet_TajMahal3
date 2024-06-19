//
//  StartView.swift
//  TajMahal
//
//  Created by Altieri on 19/06/2024.
//

import SwiftUI

struct StartView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color.CustomRed
                .edgesIgnoringSafeArea(.all)
            
            Image("Logo")
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
                .fullScreenCover(isPresented: $isActive, content: {
                    WelcomeView()
                })
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

// Définition de CustomRed
extension Color {
    static let CustomRed = Color(red: 0.8, green: 0.2, blue: 0.2)
}
