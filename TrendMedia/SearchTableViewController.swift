//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit
struct Movie {
    var poster:UIImage
    var title:String
    var releaseDay :Date
    var outline:String
}

class SearchTableViewController: UITableViewController {
    var list :[Movie] = [Movie(poster: UIImage(named: "the Philosopher's Stone")!, title: "해리포터와 마법사의 돌", releaseDay: Date.now, outline: "@@@@@@@@@@@@@@@@@@@@@")]
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "yyyy. mm. dd"
        tableView.rowHeight = 150
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as! SearchTableViewCell
        cell.posterImage.image = list[indexPath.row].poster
        cell.movieTitle.text = list[indexPath.row].title
        cell.movieTitle.font = .boldSystemFont(ofSize: 16)
        cell.releaseLabel.text = dateFormatter.string(from: list[indexPath.row].releaseDay)
        cell.releaseLabel.font = .systemFont(ofSize: 14)
        cell.outlineLabel.text = list[indexPath.row].outline
        return cell
    }
}
