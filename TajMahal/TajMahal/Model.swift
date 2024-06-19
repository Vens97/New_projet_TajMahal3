//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//



import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Structure Dish
struct Dish {
    var id = UUID() // Ajout de la propriété id de type UUID
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price : String
}

// Extension pour rendre Dish conforme à Identifiable
extension Dish: Identifiable {}
