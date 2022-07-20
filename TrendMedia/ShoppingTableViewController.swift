//
//  ShoppingTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet weak var userInputTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    var list = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    override func viewDidLoad() {
        super.viewDidLoad()
        userInputTextField.backgroundColor = .clear
//        userInputTextField.layer.cornerRadius = 8
        userInputTextField.placeholder = "무엇을 구매하실 건가요?"
        addButton.backgroundColor = .systemGray4
    }
    
    @IBAction func returnClicked(_ sender: UITextField) {
        addButtonClicked(addButton)
    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        if userInputTextField.text != "" {
            list.append(userInputTextField.text!)
        }
        userInputTextField.text = nil
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ShoppingListTableViewCell") as! ShoppingListTableViewCell
        cell.checkboxImage.image = indexPath.row % 2 == 0 ? .init(systemName: "checkmark.square.fill") : .init(systemName: "checkmark.square")
        cell.starImage.image = indexPath.row % 2 == 0 ? .init(systemName: "star") : .init(systemName: "star.fill")
        cell.shoppingListLabel.text = list[indexPath.row]
        cell.layer.cornerRadius = 8
        cell.backgroundColor = UIColor.systemGray5
        return cell
    }

}
