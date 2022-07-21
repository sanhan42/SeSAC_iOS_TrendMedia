//
//  RecommendCollectionViewController.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/20.
//

import UIKit
import Toast
import Kingfisher

private let reuseIdentifier = "Cell"
/*
 TableView -> CollectionView
 Row -> Item
 heightForRowAt -> heightForItemAt (X) => FlowLayout
 */

class RecommendCollectionViewController: UICollectionViewController {
    
    var imageURL = "https://i.ytimg.com/vi/SlnlEiXtxfE/maxresdefault.jpg"

    override func viewDidLoad() {
        super.viewDidLoad()
        // 컬렉션뷰의 셀 크기, 셀 사이 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        let spacing:CGFloat = 8
        let width = (UIScreen.main.bounds.width - spacing*4) / 3
        layout.itemSize = CGSize(width: width, height: width * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        //Compositial Layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as? RecommendCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.posterImageView.backgroundColor = .orange
        let url = URL(string: imageURL)
        cell.posterImageView.kf.setImage(with: url)
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.makeToast("\(indexPath.item)번째 셀을 선택했습니다.", duration: 1, position: .center)
        self.navigationController?.popViewController(animated: true)
    }
}
