//
//  BucketlistTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit

struct Todo {
    var title: String
    var done: Bool
}

class BucketlistTableViewController: UITableViewController {
    static let identifier = "BucketlistTableViewController"
    var placeHolderStr:String?
    @IBOutlet weak var userTextField: UITextField! {
        didSet { // 클래스는 ReferenceType 따라서 인스턴스 자체를 변경하지 않는 이상 한 번만 실행됨.
            // IBOutlet ViewDidLoad 호출 되기 직전에 nil이 아닌 지 nil인 지 알 수 있음!!
            // userTextField는 클래스. didSet 안에서 클래스 인스턴스의 프로퍼티만 변경하고 있음
            userTextField.textAlignment = .center
            userTextField.font = .boldSystemFont(ofSize: 22)
            userTextField.textColor = .systemRed
            print("텍스트필드 DidSet")
        }
    }
    // list 프로퍼티가 추가, 삭제 등 변경 되고 나서 테이블뷰를 항상 갱신!
    var list = [Todo(title: "범죄도시2", done: true), Todo(title: "탑건", done: false), Todo(title: "토르", done: false)] {
        didSet {
//            tableView.reloadData()
            print("list가 변경됨! \(list), \(oldValue)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        userTextField.placeholder = placeHolderStr
        navigationItem.title = "버킷리스트"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonCkicked))
    }
    
    @objc func closeButtonCkicked(){
        self.dismiss(animated: true)
    }
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        if let str = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), (2...6).contains(str.count) {
            list.append(Todo(title: str, done: false))
//           tableView.reloadData()
        } else {
            // 토스트 메시지 띄우기
        }
        
        // guard 구문으로 활용
        guard let str = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), (2...6).contains(str.count) else {
            // 토스트 메시지 띄우기
            return
        }
//        list.append(str)
//        tableView.reloadData()
        
        // 중요!
        /* tableView.numberOfRows(inSection: <#T##Int#>)
             tableView.cellForRow(at: <#T##IndexPath#>)
             ...
            */
//        tableView.reloadData()
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
//            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BuketlistTableViewCell.identifier, for: indexPath) as! BuketlistTableViewCell // as 타입 캐스팅
        cell.bucketlistLabel.text = list[indexPath.row].title
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        cell.checkboxButton.tag = indexPath.row
        cell.checkboxButton.addTarget(self, action: #selector(checkboxButtonClicked(sender:)), for: .touchUpInside)
        let imageStr = list[indexPath.row].done ? "checkmark.square.fill" : "checkmark.square"
        cell.checkboxButton.setImage(UIImage(systemName: imageStr), for: .normal)
        return cell
    }
    // 여기서 매개변수를 cell로 주는 것도 가능한가?
    @objc func checkboxButtonClicked(sender:UIButton) {
        list[sender.tag].done = !list[sender.tag].done
        tableView.reloadRows(at: [IndexPath(row:sender.tag,section: 0)], with: .fade)
    }
}
