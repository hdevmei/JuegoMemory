//
//  mostrarImagenesViewController.swift
//  JuegoMemory
//
//  Created by mei_yocontrolo on 23/10/2022.
//

import UIKit

class mostrarImagenesViewController: UIViewController {

    
    @IBOutlet weak var imagenMostrada: UIImageView!

    @IBOutlet weak var btnListoOutlet: UIButton!
    
    //    secuencia 1
    var secuencia1 = ["perro", "vaca", "arana", "mono", "caballo", "panda"]
    var secuencia2 = ["vaca", "mono", "caballo", "perro", "arana", "panda"]
    var secuencia3 = ["mono", "panda", "caballo", "arana", "vaca", "perro"]
    
    var secuenciaElegida: [String] = []
    
    
    
    //    crear temporizador
    
    var gameTimer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let secuenciaRandom = Int.random(in: 1..<3)
        
        
        /*
        if secuenciaRandom == 1 {
            secuenciaElegida = secuencia1
        } else if secuenciaRandom == 2 {
            secuenciaElegida = secuencia2
        } else if secuenciaRandom == 3 {
            secuenciaElegida = secuencia3
        }
        */
        
        
        switch secuenciaRandom {
        case 1:
           secuenciaElegida = secuencia1
            
        case 2:
            secuenciaElegida = secuencia2

        case 3:
            secuenciaElegida = secuencia3
            
        default:
            print("no hay secuencia elgida")
        }
//        imagenMostrada.image = UIImage(named: secuenciaElegida[0])
        
        
        gameTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(runTimeCode), userInfo: nil, repeats: true)
        
        
        //botón listo invisible y desactivado
        btnListoOutlet.isEnabled = false
        btnListoOutlet.alpha = 0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        gameTimer?.invalidate()
    }
    
    @objc func runTimeCode () { //código que se ejecuta cada 2 segundos
        if !secuenciaElegida.isEmpty { // si no está vacía
            print(secuenciaElegida)
            imagenMostrada.image = UIImage(named: secuenciaElegida[0])
            secuenciaElegida.remove(at: 0)
        } else { // si se han mostrado todas
            //activa el boton siguiente
            btnListoOutlet.isEnabled = true
            btnListoOutlet.alpha = 1
            imagenMostrada.alpha = 0
        }
    }
    
    
    @IBAction func btnListoAction(_ sender: Any) {
        performSegue(withIdentifier: "IrAdivinarSecuencia", sender: sender)
    }
    
    
    
    
}

