import UIKit

class VictoriaViewController: UIViewController {

    
    @IBOutlet weak var btnVolverOutlet: UIButton!
    @IBOutlet weak var puntuacion: UILabel!
    var puntosP2: Int!


    override func viewDidLoad() {
        super.viewDidLoad()

        puntuacion.text = String(puntosP2) + " Puntos 👑"
        btnVolverOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func bntVolver(_ sender: Any) {
        performSegue(withIdentifier: "volverAMenuDesdeVictoria", sender: sender)

    }
    
}

