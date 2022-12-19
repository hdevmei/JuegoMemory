# JuegoMemory

Desarrollar una aplicación en *iOS* para **iPhone** y **iPad** que permita jugar a un juego en que vaya apareciendo una secuencia de imágenes que el usuario debe recordar. Después se presentarán todas las imágenes posibles y el jugador debe elegir la secuencia correcta.


> Los elementos visuales deben adaptarse al tamaño y la orientación del dispositivo cambiando su tamaño y posición para aprovechar toda la pantalla.


## Desarrollo de aplicaciones multiplataforma
#### TSAPP2MA2223

---

##  Requisitos

1. Adaptable
2. Código bien comentado
3. Sistema de puntuación

`
gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimeCode), userInfo: nil, repeats: true)

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
`


==Beneficios== de practicar la memoria
(https://www.elbloginfantil.com/7-beneficios-de-los-juegos-de-memoria-para-ninos.html)

#Funciones adicionales 💥
- [x] Añadir emoticonos
- [ ] Implementar sonido
- [ ] Niveles de dificultad

[^1]: Diciembre-2022.
