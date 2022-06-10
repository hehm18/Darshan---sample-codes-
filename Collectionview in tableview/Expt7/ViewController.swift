//
//  ViewController.swift
//  Expt7
//
//  Created by CEPL on 08/06/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var TablView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        TablView.dataSource = self
        TablView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblCell", for: indexPath) as! Expt7TableViewCell
        return cell
    }
}

