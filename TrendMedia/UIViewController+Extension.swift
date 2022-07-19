//
//  UIViewController+Extension.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/19.
//

import UIKit

extension UIViewController {
    func setBackgroundColor() {
        view.backgroundColor = .orange
    }
    
    func showAlert() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
