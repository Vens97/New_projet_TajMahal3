//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                Section(header: Text("Entrées")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)) {
                    ForEach(viewModel.apetizerArray) { dish in
                        NavigationLink(destination: DetailView(dish: dish)) {
                            MenuRow(dish: dish)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal, 1)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                    }
                }

                Section(header: Text("Plats Principaux")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)) {
                    ForEach(viewModel.mainCourseArray) { dish in
                        NavigationLink(destination: DetailView(dish: dish)) {
                            MenuRow(dish: dish)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal, 1)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                    }
                }
            }
            .padding()
        }
        .background(Color(UIColor.systemGray6))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
        
            ToolbarItem(placement: .principal) {
                Text("Menu")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()
        }
    }
}

struct MenuRow: View {
    let dish: Dish

    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .frame(width: 135, height: 120)
                .cornerRadius(15)
                .padding(10)

            VStack(alignment: .leading, spacing: 5) {
                Text(dish.name)
                    .font(.headline)
                    .foregroundColor(Color(.darkGray))

                Text(dish.description)
                    .font(.subheadline)
                    .foregroundColor(Color(.darkGray))

                Spacer().frame(height: 10)

                HStack {
                    Text(dish.price)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                    Spacer()
                    spiceLevelText(for: dish.spiceLevel)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }

    @ViewBuilder
    private func spiceLevelText(for spiceLevel: SpiceLevel) -> some View {
        HStack(spacing: 10) {
            if spiceLevel == .hot {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
            } else if spiceLevel == .medium {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6)) // Utilise une couleur grise plus claire
            } else if spiceLevel == .light {
                Image("pimentrouge")
                    .resizable()
                    .frame(width: 13, height: 13)
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6))
            } else {
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6))
                Image("pimentclair")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .colorMultiply(Color.gray.opacity(0.6))
            }
        }
        .padding(.trailing, 15)
    }


}
