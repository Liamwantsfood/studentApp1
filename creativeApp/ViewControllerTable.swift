//
//  ViewControllerTable.swift
//  creativeApp
//
//  Created by WILLIAM COX on 10/20/23.
//

import UIKit

class ViewControllerTable: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var tableStudents : [Student] = []

    weak var delegate : ViewController!

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = tableStudents[indexPath.row].name
        return cell
    }

}
