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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bSearch(_ sender: Any) {
        lbPokemonName.text = tbPokemonName.text
    }

}

