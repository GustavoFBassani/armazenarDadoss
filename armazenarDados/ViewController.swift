//
//  ViewController.swift
//  armazenarDados
//
//  Created by Gustavo Ferreira Bassani on 18/08/24.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            let tarefa = tarefaUserDefault()
            tarefa.salvar(tarefa: textoDigitado)
            
            let dadosSalvos = tarefa.listar()
        }
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
