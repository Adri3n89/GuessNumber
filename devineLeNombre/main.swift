import Foundation

var nombreInput = -1
var nombreMystere = 0
var coups = 0

func game() {
    nombreMystere = Int.random(in: 0...100)
    coups = 0
    nombreInput = -1
    
    print("Bienvenue ! \nVous devez trouver un chiffre entre 0 et 100")
}

func find() {
    print("Bravo vous avez trouvé en \(coups) coups\nVoulez vous rejouer (y/n)?")
    
    let replay = readLine()
    
    if replay == "y" {
        game()
    } else if replay == "n" {
        print("Good Bye")
        
    } else {
        print("Je n'ai pas compris")
        find()
    }
}

game()

while nombreInput != nombreMystere {
    let input = readLine()
    coups += 1
    
    if let nInput = Int(input!) {
        nombreInput = nInput
     if nombreInput > nombreMystere {
        print("Le nombre est plus petit")
     } else if nombreInput < nombreMystere {
        print("Le nombre est plus grand")
     }  else {
        find()
     }
    } else {
        print("Veuillez entrer un nombre")
    }
}
