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
            ZStack(alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .frame(width: 340, height: 400)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                spiceLevelText(for: dish.spiceLevel)
                    .padding(11)
                    .background(Color.white)
                    .cornerRadius(25)
                    .offset(x: -45, y: 20)
                    .frame(width: 50, height: 50)
            }
            
            Spacer().frame(height: 20)
            
            Text("Allergies:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.top, 10)
                .padding(.vertical, 1)
                .foregroundColor(Color(.darkGray))
            Text(dish.allergens)
                .padding(.horizontal, 20)
                .font(.subheadline)
                .foregroundColor(Color(.darkGray))
            
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .frame(height: 2)
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
            
            Text("Ingrédients:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.vertical, 5)
                .foregroundColor(Color(.darkGray))
            Text(dish.ingredients)
                .font(.subheadline)
                .padding(.horizontal, 20)
                .foregroundColor(Color(.darkGray))
            
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

    @ViewBuilder
    private func spiceLevelText(for spiceLevel: SpiceLevel) -> some View {
        HStack(spacing: 2) {
            if spiceLevel == .hot {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
            } else if spiceLevel == .medium {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6)) // Couleur grise plus claire
            } else if spiceLevel == .light {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6))
            } else {
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 15, height: 15) // Taille des images de piment
                    .colorMultiply(Color.gray.opacity(0.6))
            }
        }
        .padding(.trailing, 15)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleDish = ViewModel().mainCourseArray[0]
        DetailView(dish: sampleDish)
    }
}
