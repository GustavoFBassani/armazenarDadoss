//
//  tarefaUserDefault.swift
//  armazenarDados
//
//  Created by Gustavo Ferreira Bassani on 18/08/24.
//

import UIKit

class tarefaUserDefault {

    var tarefaArray: [String] = []
    
    
    func remover(indice: Int) {
        tarefaArray = listar()
        
        tarefaArray.remove(at: indice)
        UserDefaults.standard.setValue(tarefaArray, forKey: "chave")
        
    }
    
    func salvar(tarefa: String) {
        
        // Recuperar tarefas salvas
        tarefaArray = listar()
        
        //salvar tarefa
        tarefaArray.append(tarefa)
        UserDefaults.standard.setValue(tarefaArray, forKey: "chave")
        
    }
    
    
    func listar() -> Array<String> {
      
        let dados = UserDefaults.standard.object(forKey: "chave")
        
        if dados != nil {
         return dados as! Array<String>
        } else {
            return []
        }
    }
    
}

