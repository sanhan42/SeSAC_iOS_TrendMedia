//
//  SearchLectureTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/20.
//

import UIKit

class SearchLectureTableViewController: UITableViewController {
    var movieList = MovieInfo().movie
    // [JMovie(title: "암살", releaseDate: "2022. 22. 22", runtime: 130, overview: "!!!!!!!!!!", rate: 4.5), JMovie(title: "괴물", releaseDate: "2022. 01. 10", runtime: 120, overview: "@@@@@@@@@@@@@@@@@@@", rate: 4)]
    //["해리포터와 아즈카반의 죄수", "암살", "도둑들", "라라랜드","전우치","토르"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchLectureTableViewCell", for: indexPath) as! SearchLectureTableViewCell
        cell.configureCell(data: movieList[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // 전체 디바이스의 8분의 1
        return UIScreen.main.bounds.height / 8
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print("didSelectRowAt) // 만약 테스트 해봤을 때 동작하지 않는다면, 1. TableView가 noSelection 상태 || 2. 셀 위에 전체 버튼이 겹쳐있음
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "Recommend") as! RecommendCollectionViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
