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
//        vc.userTextField.placeholder = "영화 제목을 입력해주세요"
        vc.placeHolderStr = "영화 제목을 입력해주세요"
        // 3.
        self.present(vc, animated: true)
    }
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        // 네비게이션 컨트롤러를 임베드하지 않은 상황.
        // 1. Storyboard 찾기
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketlistTableViewController.identifier) as! BucketlistTableViewController
        vc.placeHolderStr = "드라마 제목을 입력해주세요"
        // 2.5. present 화면 전환 방식 설정 (옵션)
        vc.modalPresentationStyle = .fullScreen
        // 3.
        self.present(vc, animated: true)
        // 뷰컨트롤러를 present 했으나, NavigationController를 스토리보드로 추가했다면, 뷰컨트롤러 화면에 네비게이션바가 보이겠는가? => 안보임.
    }
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        // 1. Storyboard 찾기
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketlistTableViewController.identifier) as! BucketlistTableViewController
        vc.placeHolderStr = "책 제목을 입력해주세요"
        // 2.5.
        let nav = UINavigationController(rootViewController: vc)
        // 스토리보드 상에서 네비게이션 컨트롤러를 추가해줬는데, 코드로 다시 네비게이션 컨트롤로를 추가해준다면 어떻게 되겠는가?
        // => 속지말자! 여기 코드 상에서 vc는 네비게이션 컨트롤러가 추가안된 그냥 뷰컨트롤러를 가르키고 있다.
        
        // 2.5. present 화면 전환 방식 설정 (옵션)
        nav.modalPresentationStyle = .fullScreen
        // 3.
        self.present(nav, animated: true)
    }
}
