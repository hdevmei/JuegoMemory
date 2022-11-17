import UIKit

class mostrarImagenesViewController: UIViewController {

    
    @IBOutlet weak var imagenMostrada: UIImageView!

    @IBOutlet weak var btnListoOutlet: UIButton!
    
    //    posibles secuencias
    var secuencia1 = ["panda", "vaca", "arana", "mono", "caballo", "perro"]
    var secuencia2 = ["vaca", "mono", "caballo", "perro", "arana", "panda"]
    var secuencia3 = ["mono", "panda", "caballo", "arana", "vaca", "perro"]
    var secuencia4 = ["perro", "mono", "caballo", "arana", "panda", "vaca"]
    var secuencia5 = ["caballo", "vaca", "perro", "panda", "arana", "mono"]
    
    // secuencia vacía
    var secuenciaElegida: [String] = []
    
    
    // secuencia que se pasa a otro view controller
    var secuenciaElegidaCompleta: [String]  = []

    //    crear temporizador
    
    var gameTimer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        btnListoOutlet.layer.cornerRadius = 15
        
        /*
        if secuenciaRandom == 1 {
            secuenciaElegida = secuencia1
            secuenciaElegidaCompleta = secuencia1
         
        } else if secuenciaRandom == 2 {
            secuenciaElegida = secuencia2
            secuenciaElegidaCompleta = secuencia2
         
        } else if secuenciaRandom == 3 {
            secuenciaElegida = secuencia3
            secuenciaElegidaCompleta = secuencia3
         
         else if secuenciaRandom == 4 {
            secuenciaElegida = secuencia4
            secuenciaElegidaCompleta = secuencia4

         else if secuenciaRandom == 5 {
            secuenciaElegida = secuencia
            secuenciaElegidaCompleta = secuencia5

        } else {
            print("no hay secuencia elegida")
        }

        */
        
        
        let secuenciaRandom = Int.random(in: 1..<6)
        switch secuenciaRandom {
        case 1:
            secuenciaElegida = secuencia1
            secuenciaElegidaCompleta = secuencia1

        case 2:
            secuenciaElegida = secuencia2
            secuenciaElegidaCompleta = secuencia2

        case 3:
            secuenciaElegida = secuencia3
            secuenciaElegidaCompleta = secuencia3
        
        case 4:
            secuenciaElegida = secuencia4
            secuenciaElegidaCompleta = secuencia4
            
        case 5:
            secuenciaElegida = secuencia5
            secuenciaElegidaCompleta = secuencia5
            
        default:
            print("No hay secuencia elegida")
        }
        
        print(secuenciaRandom)
        print(secuenciaElegida)
        
        
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimeCode), userInfo: nil, repeats: true)
        
        
        //botón listo invisible y desactivado
        btnListoOutlet.isEnabled = false
        btnListoOutlet.alpha = 0
        btnListoOutlet.layer.cornerRadius = 10
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        gameTimer?.invalidate()
    }
    
    @objc func runTimeCode () { //código que se ejecuta cada 2 segundos
        if !secuenciaElegida.isEmpty { // si no está vacía
//            print(secuenciaElegida)
            imagenMostrada.image = UIImage(named: secuenciaElegida[0])
        secuenciaElegida.remove(at: 0)
        
        } else { // si se han mostrado todas
            //activa el boton siguiente
            btnListoOutlet.isEnabled = true
            btnListoOutlet.alpha = 1
            imagenMostrada.alpha = 0

        }
    }
    
    
    
    @IBAction func btnListoOutlet(_ sender: Any) {
        performSegue(withIdentifier: "irAdivinarSecuencia", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irAdivinarSecuencia" {
            let VC2 = segue.destination as! ViewController
            VC2.secuenciaBuenaFinal = secuenciaElegidaCompleta
        }
    }
    
    

    
}

