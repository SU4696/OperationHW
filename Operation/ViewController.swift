//
//  ViewController.swift
//  Operation
//
//  Created by 조수연 on 2022/10/14.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet weak var numeroInferior: UITextField!
     @IBOutlet weak var numeroSuperior: UITextField!
     var titulo: String  = ""
     @IBAction func division(_ sender: Any) {
         
 //        CODIGO CON VALIDACION DE VARIABLES
         let numeroOriginal = Float(numeroSuperior.text!)
         let numeroOpera = Float(numeroInferior.text ?? "0")
         var mensaje = "Favor de completar ambos campos."

         if (numeroOriginal != nil && numeroOpera != nil)
         {
             let resultado = (numeroOriginal ?? 0)/(numeroOpera ?? 0)
             mensaje = String(resultado)
         }
         
         MostrarAlerta(mensaje: mensaje, titulo:"División!")
         title = "Divisón"
         MostrarAlerta(valor: mensaje)
     }
     @IBAction func suma(_ sender: Any) {
         let numeroOriginal = Float(numeroSuperior.text!)
         let numeroOpera = Float(numeroInferior.text ?? "0")
         var mensaje = "Favor de completar ambos campos."

         if (numeroOriginal != nil && numeroOpera != nil)
         {
             let resultado = (numeroOriginal ?? 0)+(numeroOpera ?? 0)
             mensaje = String(resultado)
         }
         
         MostrarAlerta(mensaje: mensaje, titulo:"Suma!")
         title = "Suma"
         MostrarAlerta(valor: mensaje)
        
     }
     
    @IBAction func rest(_ sender: Any) {
        let numeroOriginal = Float(numeroSuperior.text!)
        let numeroOpera = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (numeroOriginal != nil && numeroOpera != nil)
        {
            let resultado = (numeroOriginal ?? 0)-(numeroOpera ?? 0)
            mensaje = String(resultado)
        }
        
        MostrarAlerta(mensaje: mensaje, titulo:"Resta!")
        title = "Resta"
        MostrarAlerta(valor: mensaje)
    }
    
    @IBAction func multi(_ sender: Any) {
        let numeroOriginal = Float(numeroSuperior.text!)
        let numeroOpera = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."

        if (numeroOriginal != nil && numeroOpera != nil)
        {
            let resultado = (numeroOriginal ?? 0)*(numeroOpera ?? 0)
            mensaje = String(resultado)
        }
        
        MostrarAlerta(mensaje: mensaje, titulo:"Multiplicación!")
        title = "Multiplicación"
        MostrarAlerta(valor: mensaje)
    }
    @IBOutlet weak var tituloLabel: UILabel!
     
     func MostrarAlerta(mensaje: String, titulo: String){

         let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle:UIAlertController.Style.alert)
         alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.cancel))
         self.present(alert, animated: true,completion:nil)
     }
     func MostrarAlerta(valor: String){
         MostrarAlerta(mensaje: valor, titulo: self.titulo)
     }
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            tituloLabel.text = "Segunda Aplicación"
            tituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
        }


}

