//
//  ViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    // 언제 아웃렛컬렉션을 사용하는 것이 좋을까?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    @IBOutlet var dateLabelCollection: [UILabel]!
    let format = DateFormatter()
    // 서비스에서 계속 사용되는 변수, 상수는 어디에 선언해주는게 효율적인지 고민해볼 필요가 있다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        format.dateFormat = "yyyy/MM/dd"
        greenViewTopConstraint.constant = 120
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var greenViewTopConstraint: NSLayoutConstraint!
    
    func configureLabelDesign() {
        // 1. OutletCollection 사용
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .brown
        }
        dateLabelCollection[0].text = "첫번째 텍스트"
        dateLabelCollection[1].text = "첫번째 텍스트"
        // 인덱스를 사용하는 것이 좋을 수도 있으나, 시간이 흐른 후에 코드를 다시 볼 때, 알아보기 어러울 수 있음.
        // 만약, Label들이 추가되거나 배치가 수정된다면, 인덱스가 더욱 헷갈릴 수 있다.
        
        // 2. UILabel
        let labelArray = [dateLabel, date2Label]
        for i in labelArray {
            i?.font = .boldSystemFont(ofSize: 20)
            i?.textColor = .brown
        }
        dateLabel.text = "첫번째"
        date2Label.text = "두번째"
    }
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        dateLabel.text = format.string(from: sender.date)
    }
}

