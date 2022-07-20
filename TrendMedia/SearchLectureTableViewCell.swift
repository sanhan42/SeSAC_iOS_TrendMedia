//
//  SearchLectureTableViewCell.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/20.
//

import UIKit

class SearchLectureTableViewCell: UITableViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    func configureCell(data: JMovie) {
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        releaseLabel.text = "\(data.releaseDate) | \(data.rate)"
        overviewLabel.text = data.overview
    }
    
}
