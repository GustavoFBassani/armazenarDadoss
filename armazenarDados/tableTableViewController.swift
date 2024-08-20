//
//  tableTableViewController.swift
//  armazenarDados
//
//  Created by Gustavo Ferreira Bassani on 18/08/24.
//

import UIKit

class tableTableViewController: UITableViewController {
    
    var tarefasArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let tarefaObjeto = tarefaUserDefault()
        tarefasArray = tarefaObjeto.listar()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefasArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaId", for: indexPath)
        cell.textLabel?.text = tarefasArray[indexPath.row]

        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let tarefaObjeto = tarefaUserDefault()
            tarefaObjeto.remover(indice: indexPath.row)

            tarefasArray = tarefaObjeto.listar()
            tableView.reloadData()
        }
    }

}
