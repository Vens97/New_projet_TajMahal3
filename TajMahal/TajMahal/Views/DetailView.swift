//
//  DetailView.swift
//  TajMahal
//
//  Created by Altieri on 19/06/2024.
//

import SwiftUI

struct DetailView: View {
    let dish: Dish
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            Image(dish.imageName)
                .resizable()
                .frame(width: 340, height: 400)
                .cornerRadius(15)
                .padding(.horizontal)
            
            Spacer().frame(height: 20)
            
            Text("Allergies:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.top, 10)
                .padding(.vertical, 1)
            Text(dish.allergens)
                .padding(.horizontal, 20)
                .font(.subheadline)
            
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .frame(height: 2)
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
            
            Text("Ingrédients:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.vertical, 5)
            Text(dish.ingredients)
                .font(.subheadline)
                .padding(.horizontal, 20)
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                    Text(dish.name)
                        .font(.headline)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleDish = ViewModel().mainCourseArray[0]
        DetailView(dish: sampleDish)
    }
}
