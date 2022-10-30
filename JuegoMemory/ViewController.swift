import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
//outlets
    @IBOutlet weak var imagenGrande: UIImageView!
    
    
    @IBOutlet weak var btnPandaOutlet: UIButton!
    
    @IBOutlet weak var btnAranaOutlet: UIButton!
    
    @IBOutlet weak var btnCaballoOutlet: UIButton!
    @IBOutlet weak var btnMonoOutlet: UIButton!
    @IBOutlet weak var btnVacaOutlet: UIButton!
    @IBOutlet weak var btnPerroOutlet: UIButton!
    
    
    
    
    func crearOrdenAleatorio () {
         
    }
    
    
    
// diccionario ordenFotosIntentoUsuario
    var ordenIntentoUsuario = [Int: String] ()
    
    var fotoElegidaEnOrden: Int = 1
    
    

    
    
    
//    funcion botones
    @IBAction func btnPanda(_ sender: UIButton) {
        imagenGrande.image = UIImage(named:"panda") // cambiar foto grande
        btnPandaOutlet.isEnabled = false
        btnPandaOutlet.alpha = 0
//        meter en una funcion
        let nombreFoto = "panda"
        fotoElegidaEnOrden += 1
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
        
        
    }
    
    
    
    @IBAction func btnArana(_ sender: UIButton) {
        imagenGrande.image = UIImage(named:"arana")
        btnAranaOutlet.isEnabled = false
        btnAranaOutlet.alpha = 0
//        meter en una funcion
        let nombreFoto = "arana"
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
        
    }
    
    
    
    @IBAction func btnCaballo(   _ sender: Any) {
        imagenGrande.image = UIImage(named:"caballo")
        btnCaballoOutlet.isEnabled = false
        btnCaballoOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "caballo"
        fotoElegidaEnOrden += 1
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
    }
    
    
    @IBAction func btnMono(_ sender: Any) {
        imagenGrande.image = UIImage(named:"mono")
        btnMonoOutlet.isEnabled = false
        btnMonoOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "mono"
        fotoElegidaEnOrden += 1
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
    }
    
    
    
    @IBAction func btnVaca(_ sender: Any) {
        imagenGrande.image = UIImage(named:"vaca")
        btnVacaOutlet.isEnabled = false
        btnVacaOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "vaca"
        fotoElegidaEnOrden += 1
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
    }
    
    @IBAction func btnPerro(_ sender: Any) {
        imagenGrande.image = UIImage(named:"perro")
        btnPerroOutlet.isEnabled = false
        btnPerroOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "perro"
        fotoElegidaEnOrden += 1
        ordenIntentoUsuario[fotoElegidaEnOrden] = nombreFoto
        print(ordenIntentoUsuario)
    }
    
}

