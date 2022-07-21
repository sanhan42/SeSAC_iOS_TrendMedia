//
//  BuketlistTableViewCell.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit

class BuketlistTableViewCell: UITableViewCell {
    static let identifier = "BuketlistTableViewCell"
    @IBOutlet weak var checkboxButton: UIButton!
    @IBOutlet weak var bucketlistLabel: UILabel!
    @IBOutlet weak var dateLable: UILabel!
}
