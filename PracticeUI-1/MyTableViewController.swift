//
//  MyTableViewController.swift
//  PracticeUI-1
//
//  Created by 내꺼다 on 5/29/24.
//

import UIKit

class MyTableViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    let friendNames: [String] = ["Henry", "Leeo", "Jay", "Key"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }

}

//클래스 확장
extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
            cell.textLabel?.text = friendNames[indexPath.row]
        return cell
    }
}



//연결이 이상한듯,,,
