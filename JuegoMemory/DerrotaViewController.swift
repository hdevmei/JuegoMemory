//
//  DerrotaViewController.swift
//  JuegoMemory
//
//  Created by mei_yocontrolo on 02/11/2022.
//

import UIKit

class DerrotaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnVolver(_ sender: Any) {
        performSegue(withIdentifier: "volverAMenuInicialDesdeDerrota", sender: sender)

    }
    

}
