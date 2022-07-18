//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {
    let settingName = [["공지사항", "실험실", "버전 정보"],["개인/보안","알림","채팅","멀티프로필"],["고객센터/도움말"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0 : return 3
        case 1 : return 4
        default : return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0 : return "전체 설정"
        case 1 : return "개인 설정"
        case 2 : return "기타"
        default : return "섹션"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "case2Cell")!
        cell.textLabel?.font = .boldSystemFont(ofSize: 14)
        switch indexPath.section {
        case 0 : cell.textLabel?.text = settingName[0][indexPath.row]
        case 1 : cell.textLabel?.text = settingName[1][indexPath.row]
        case 2 : cell.textLabel?.text = settingName[2][indexPath.row]
        default : cell.textLabel?.text = "세부 설정"
        }
        return cell
    }
}
