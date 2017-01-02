//
//  ViewController.swift
//  mypokemons
//
//  Created by Ben Stein on 2/1/17.
//  Copyright © 2017 Ben Stein. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var tbPokemonName: UITextField!
    
    @IBOutlet weak var imgPokemon: UIImageView!
    
    @IBOutlet weak var lbPokemonName: UILabel!
    
    var pokemonList: [String] = ["articuno", "bulbasaur", "caterpie", "charmander", "eevie", "ekans", "jigglypuff", "lugia", "mankey", "pikachu", "clefairy", "sandshrew", "squirtle", "vulpix"]
    
    var player: AVAudioPlayer!
    
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
                    showPokemon(name)
                    playSound("found")
                    isFound = true
                    break
                }
            }
            
            if !isFound {
                lbPokemonName.text = "can't find \(pokemonName!)"
                showPokemon("")
                playSound("not_found")
            }
        }
        else {
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
    
    func showPokemon(_ name: String) {
        imgPokemon.image = UIImage(named: name)
    }
    
    func playSound(_ sound: String) {
        let audioPath = Bundle.main.path(forResource: sound, ofType: "wav")!
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            player.play()
        }
        catch {
            print("Can't find the audio file")
        }
    }
}

