//
//  ViewController.swift
//  mypokemons
//
//  Created by Ben Stein on 2/1/17.
//  Copyright © 2017 Ben Stein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbPokemonName: UITextField!
    
    @IBOutlet weak var imgPokemon: UIImageView!
    
    @IBOutlet weak var lbPokemonName: UILabel!
    
    var pokemonList: [String] = ["caterpie", "ekans", "pikachu", "clefairy"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bSearch(_ sender: Any) {
        
        lbPokemonName.text = ""
        
        let pokemonName = tbPokemonName.text
        
        var isFound = false
        
        if pokemonName != "" {
            
            for name in pokemonList {
                if pokemonName == name {
                    lbPokemonName.text = pokemonName
                    isFound = true
                    break
                }
            }
            
            if !isFound {
                lbPokemonName.text = "can't find \(pokemonName!)"
            }
        }
        else {
            // Show Alert here
            let alert = UIAlertController(
                title: "Alert",
                message: "Pokemon's name cannot be empty!",
                preferredStyle: UIAlertControllerStyle.alert
            )
            
            let action = UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil
            )
            
            alert.addAction(action)
            self.present(
                alert,
                animated: true,
                completion: nil
            )
        }
    }

}

