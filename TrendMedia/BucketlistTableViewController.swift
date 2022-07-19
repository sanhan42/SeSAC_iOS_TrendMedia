//
//  BucketlistTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit

class BucketlistTableViewController: UITableViewController {
    @IBOutlet weak var userTextField: UITextField!
    var list = ["범죄도시2", "탑건", "토르"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        list.append(sender.text!)
        // 중요!
        /* tableView.numberOfRows(inSection: <#T##Int#>)
             tableView.cellForRow(at: <#T##IndexPath#>)
             ...
            */
        tableView.reloadData()
//        tableView.reloadSections(<#T##sections: IndexSet##IndexSet#>, with: <#T##UITableView.RowAnimation#>)
//        tableView.reloadRows(at: [IndexPath(row: 0, section: 0), ...], with: <#T##UITableView.RowAnimation#>)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true // 셀 편집 가능 여부 설정
    }
    
    // 우측 스와이프 디폴트 기능 : commit editingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // 배열 삭제 후 테이블뷰 갱신
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BuketlistTableViewCell", for: indexPath) as! BuketlistTableViewCell // as 타입 캐스팅
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        return cell
    }
}
