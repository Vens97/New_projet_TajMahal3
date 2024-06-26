//
//  LineView.swift
//  TajMahal
//
//  Created by Altieri on 27/05/2024.
//

import SwiftUI

// Définition de la structure LineView, conforme au protocole View de SwiftUI

struct LineView: View {
    
    // Propriétés pour stocker les données nécessaires pour configurer la vue
    let systemName: String
    let onetext: String
    let twotext: String
   
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.black)
                .imageScale(.large)
            Text(onetext)
            Spacer()
            Text(twotext)
           
        }
        .padding()
    }
}

#Preview {
    LineView(systemName: "clock", onetext: "mardi", twotext: "ubgg")
}
