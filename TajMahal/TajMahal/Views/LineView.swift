//
//  LineView.swift
//  TajMahal
//
//  Created by Altieri on 27/05/2024.
//

import SwiftUI

struct LineView: View {
    
    let systemName: String
    let onetext: String
    let twotext: String
    let troistext: String
    
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
    LineView(systemName: "clock", onetext: "mardi", twotext: "ubgg", troistext: "phone")
}
