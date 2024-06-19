
import SwiftUI
extension Color {
    static let bordeauxRed = Color(red: 0.8, green: 0.0, blue: 0.13)
}

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("TajMahal")
                    .padding(.bottom, 5) // Espace entre l'image et le premier LineView
                
                VStack {
                    HStack {
                        LineView(systemName: "", onetext: "Restaurant Indien", twotext: "", troistext: "bjbjb")
                            .font(.subheadline)
                            .padding(.horizontal, 0)
                            .padding(.bottom, -40)
                            .foregroundColor(Color(.darkGray)) // Texte en gris foncé
                        
                        Spacer()
                        
                        Image("Logo")
                            .resizable()
                            .frame(width: 45, height: 40)
                            .colorMultiply(Color(.systemGray))
                            .padding(.bottom, -60)
                            .padding(.horizontal, 13)
                    }
                    
                    LineView(systemName: "clock", onetext: "Taj Mahal", twotext: "", troistext: "")
                        .fontWeight(.bold)
                        .padding(.horizontal, 0)
                    
                    LineView(systemName: "clock", onetext: "Mardi", twotext: "11h30-14h30-18h30-22h30", troistext: "")
                        .padding(.bottom, -25)
                        .padding(.horizontal, 10)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray)) // Texte en gris foncé
                    
                    LineView(systemName: "bag", onetext: "Type de service", twotext: "A emporter", troistext: "")
                        .padding(.bottom, -25)
                        .padding(.horizontal, 10)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray)) // Texte en gris foncé
                    
                    LineView(systemName: "mappin.and.ellipse", onetext: "12 avenue de la brique - 75010 Paris", twotext: "", troistext: "")
                        .padding(.bottom, -25)
                        .padding(.horizontal, 10)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray)) // Texte en gris foncé
                    
                    LineView(systemName: "globe", onetext: "www.tajmahal.fr", twotext: "", troistext: "")
                        .padding(.bottom, -25)
                        .padding(.horizontal, 10)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray)) // Texte en gris foncé
                    
                    LineView(systemName: "phone", onetext: "06 12 24 56 78", twotext: "", troistext: "")
                        .padding(.bottom, -5)
                        .padding(.horizontal, 10)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray)) // Numéro de téléphone en gris foncé
                }
                
                Spacer()
                
                NavigationLink(destination: MenuView()) {
                    Text("Accéder au menu")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 90)
                        .background(Color.bordeauxRed)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true) // Cacher le bouton de retour automatique
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Utilisation du style de navigation stack pour éviter le bouton de retour par défaut
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

