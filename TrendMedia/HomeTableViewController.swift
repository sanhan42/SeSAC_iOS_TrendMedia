//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/18.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var bithdayFriend = ["개동", "깝", "춘", "기털", "뽀로로","모구리", "스노기"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // 섹션의 갯수 (옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else {
            return "친구~~~~~~"
        }
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "풋터"
    }
    
    // 1. 셀의 갯수
    // ex. 카톡 친구 수 (100명 -> 셀 100개)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 100
        
        // 세션 별로 셀의 갯수를 다르게 설정.
        switch section {
        case 0: return bithdayFriend.count
        case 1: return 2
        default : return 10
        }
    }

    // 2. 셀의 디자인과 데이터 (필수)
    // ex. 카톡 이름, 프로필 사진, 상태 메시지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 셀 * 100을 해주고 있는 것이다.
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        // indexPath에 따라 셀 디자인 변경
        if indexPath.section == 0 {
//            for (i,name) in bithdayFriend.enumerated() {
//                if indexPath.row == i {
//                    cell.textLabel?.text = name
//                }
//            }
            cell.textLabel?.text = bithdayFriend[indexPath.row]
            cell.textLabel?.textColor = .systemMint
            cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "1번 인덱스 텍스트"
            cell.textLabel?.textColor = .systemPink
            cell.textLabel?.font = .boldSystemFont(ofSize: 25)
        } else if indexPath.section == 2 {
            cell.textLabel?.text = "2번 인덱스 섹션의 텍스트"
            cell.textLabel?.textColor = .systemBrown
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        }
        
        return cell
    }
}
