//
//  TrendTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/21.
//

import UIKit

class TrendTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func movieButtonClicked(_ sender: UIButton) {
        /*화면 전환 : 1. 스토리보드 파일 찾기 2. 스토리보드 내의 뷰컨트롤러 찾기 3. 화면 전환*/
        // 영화버튼 클릭 > BucketlistTableViewController Present
        // 1. Storyboard 찾기
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketlistTableViewController.identifier) as! BucketlistTableViewController
        // 3.
        self.present(vc, animated: true)
    }
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        // 네비게이션 컨트롤러를 임베드하지 않은 상황.
        // 1. Storyboard 찾기
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketlistTableViewController.identifier) as! BucketlistTableViewController
        // 2.5. present 화면 전환 방식 설정 (옵션)
        vc.modalPresentationStyle = .fullScreen
        // 3.
        self.present(vc, animated: true)
    }
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        // 1. Storyboard 찾기
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketlistTableViewController.identifier) as! BucketlistTableViewController
        // 2.5.
        let nav = UINavigationController(rootViewController: vc)
        // 2.5. present 화면 전환 방식 설정 (옵션)
        nav.modalPresentationStyle = .fullScreen
        // 3.
        self.present(nav, animated: true)
    }
}
