//
//  ViewController.swift
//  DoMoreVersion1
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    let todos = [
        ToDo(title:"Say Hi to Karlie!"),
        ToDo(title:"Make a productivity app"),
        ToDo(title:"Make my Bed"),
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath:IndexPath) -> UITableViewCell {
       
        let todo = todos[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = todo.title
        return cell
    }
}
