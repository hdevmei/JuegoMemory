import UIKit

//pendientes

//pantalla principal poner constrains
//pasar secuncia aleatoria a pantalla mostrar imágenes
//error consola

class ViewController: UIViewController {
    @IBOutlet weak var tiempoOutlet: UILabel!
    
    var TiempoRestante : Int = 20
    var timer: Timer!
    var secuenciaBuenaFinal: [String] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("desde pantalla 2" + "\(secuenciaBuenaFinal)" )
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:
                                        #selector(step), userInfo: nil, repeats: true)
    }
    
    @objc func step() {
        if TiempoRestante > 0 {
            TiempoRestante -= 1
        } else {
            //            ir a pantalla de tiempo acabado,
            performSegue(withIdentifier: "irTiempoAgotado", sender: nil)
            timer.invalidate()

        }
        tiempoOutlet.text = "\(TiempoRestante)"
    }
    
    
    
    
    //outlets
    @IBOutlet weak var imagenGrande: UIImageView!
    @IBOutlet weak var btnPandaOutlet: UIButton!
    @IBOutlet weak var btnAranaOutlet: UIButton!
    @IBOutlet weak var btnCaballoOutlet: UIButton!
    @IBOutlet weak var btnMonoOutlet: UIButton!
    @IBOutlet weak var btnVacaOutlet: UIButton!
    @IBOutlet weak var btnPerroOutlet: UIButton!
    
    
    
    

    
    // diccionario ordenFotosIntentoUsuario
    var ordenIntentoUsuario = [String]()
    
    var fotoElegidaEnOrden: Int = 0
    

    
    //    funcion botones
    @IBAction func btnPanda(_ sender: UIButton) {
        imagenGrande.image = UIImage(named:"panda") // cambiar foto grande
        btnPandaOutlet.isEnabled = false
        btnPandaOutlet.alpha = 0
        let nombreFoto = "panda"
        ordenIntentoUsuario.append(nombreFoto)
        comprobar()
        
        fotoElegidaEnOrden += 1
    }
    
    
    
    @IBAction func btnArana(_ sender: UIButton) {
        imagenGrande.image = UIImage(named:"arana")
        btnAranaOutlet.isEnabled = false
        btnAranaOutlet.alpha = 0
        let nombreFoto = "arana"
        ordenIntentoUsuario.append(nombreFoto)
        comprobar()
        
        fotoElegidaEnOrden += 1
    }
    
    
    
    @IBAction func btnCaballo(   _ sender: Any) {
        imagenGrande.image = UIImage(named:"caballo")
        btnCaballoOutlet.isEnabled = false
        btnCaballoOutlet.alpha = 0
        let nombreFoto = "caballo"
        ordenIntentoUsuario.append(nombreFoto)
        
        comprobar()
        
        fotoElegidaEnOrden += 1
    }
    
    
    @IBAction func btnMono(_ sender: Any) {
        imagenGrande.image = UIImage(named:"mono")
        btnMonoOutlet.isEnabled = false
        btnMonoOutlet.alpha = 0
        let nombreFoto = "mono"
        ordenIntentoUsuario.append(nombreFoto)
        
        comprobar()
        fotoElegidaEnOrden += 1
        
    }
    
    
    
    @IBAction func btnVaca(_ sender: Any) {
        imagenGrande.image = UIImage(named:"vaca")
        btnVacaOutlet.isEnabled = false
        btnVacaOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "vaca"
        ordenIntentoUsuario.append(nombreFoto)
        
        comprobar()
        
        fotoElegidaEnOrden += 1
        
    }
    
    @IBAction func btnPerro(_ sender: Any) {
        imagenGrande.image = UIImage(named:"perro")
        btnPerroOutlet.isEnabled = false
        btnPerroOutlet.alpha = 0
        //        meter en una funcion
        let nombreFoto = "perro"
        ordenIntentoUsuario.append(nombreFoto)
        comprobar()
        
        fotoElegidaEnOrden += 1
    }
    
    
    
    var fotosCorrectas = 0
    var puntos = 0
    func comprobar() {
        if secuenciaBuenaFinal[fotoElegidaEnOrden] == ordenIntentoUsuario[fotoElegidaEnOrden]{
          print("bien")
//            view.backgroundColor = .green
            fotosCorrectas += 1
            if fotosCorrectas == 6 {
//                print("secuencia correcta")
                timer.invalidate()
                
//                calcular puntos
                if TiempoRestante >= 15 {
                    puntos = 1000
                } else if TiempoRestante == 14 || TiempoRestante == 13 {
                    puntos = 800
                } else  if TiempoRestante == 12 || TiempoRestante == 11 {
                    puntos = 600
                } else  if TiempoRestante == 10 || TiempoRestante == 9 {
                    puntos = 500
                } else if TiempoRestante == 8 || TiempoRestante == 7 {
                    puntos = 450
                } else if TiempoRestante == 6 || TiempoRestante == 5 {
                    puntos = 350
                } else if TiempoRestante == 4 || TiempoRestante == 3{
                    puntos = 200
                } else if TiempoRestante == 2 || TiempoRestante == 1 {
                    puntos = 100
                }
                
                
//                ir pantalla victoria
                performSegue(withIdentifier: "irSecuenciaCorrecta", sender: nil)
                timer.invalidate()
                
                print(puntos)
                print(TiempoRestante)
            }
            
        }else {
          print("mal")
            view.backgroundColor = .red

   performSegue(withIdentifier: "irSecuenciaErronea", sender: nil)
            timer.invalidate()
        }
    }
    

    
//  pasar puntos de victoria a victoriaVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination  = segue.destination as?  VictoriaViewController{
            destination.puntosP2 = puntos
        }
        
    }
    
}

