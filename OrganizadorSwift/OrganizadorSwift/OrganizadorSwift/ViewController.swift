//
//  ViewController.swift
//  OrganizadorSwift
//
//  Created by CEDAM18 on 25/11/19.
//  Copyright © 2019 CEDAM18. All rights reserved.
//

import UIKit

var lista = ["tarea 1", "tarea 2", "tarea 3"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "tarea")
        cell.textLabel?.text = lista[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCell.EditingStyle.delete{
            lista.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let tab = tabBarController?.viewControllers![1] as! AgregarViewController
        tab.index = indexPath.row
        tabBarController?.selectedIndex = 1
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

