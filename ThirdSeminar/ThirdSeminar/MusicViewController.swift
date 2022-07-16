//
//  MusicViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/16.
//

import UIKit

class MusicViewController: UIViewController {
    @IBOutlet weak var musicCollectionView: UICollectionView!
    private var musicList : [MusicDataModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMusicList()
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self
    }
    
    func setMusicList() {
        musicList.append(contentsOf: [
            MusicDataModel(coverName: "soptAppIcon1", musicTitle: "가습기", singer: "한요한"),
            MusicDataModel(coverName: "soptAppIcon2", musicTitle: "Thick and Thin", singer: "LANY"),
            MusicDataModel(coverName: "soptAppIcon3", musicTitle: "시공간", singer: "기리보이")
        ])
    }
}

extension MusicViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let musicCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionViewCell.identifier, for: indexPath) as? MusicCollectionViewCell else { return UICollectionViewCell() }

        musicCell.setData(imageName: musicList[indexPath.row].coverName,
                          title: musicList[indexPath.row].musicTitle,
                          subtitle: musicList[indexPath.row].singer)

        return musicCell
    }
}

extension MusicViewController : UICollectionViewDelegate {
    
}

extension MusicViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width

        let cellWidth = width * (177/375)
        let cellHeight = cellWidth * (205/177)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
}
