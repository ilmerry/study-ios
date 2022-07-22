//
//  ProfileViewController.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/22.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
    }
    
    private func setupCollectionView() {
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self

        // 두번째 register 함수로 셀 등록
        profileCollectionView.register(UINib(
            nibName: "ProfileCollectionViewCell",
            bundle: nil), forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier)
        
        profileCollectionView.register(UINib(nibName: "PostCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
        
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 24
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = indexPath.section
        switch section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: ProfileCollectionViewCell.identifier,
                    for: indexPath) as? ProfileCollectionViewCell
                else {
                    fatalError("셀 타입 캐스팅 실패...")
                }
            return cell
        default:
            guard let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: PostCollectionViewCell.identifier,
                    for: indexPath) as? PostCollectionViewCell
                else {
                    fatalError("셀 타입 캐스팅 실패...")
                }
            return cell
        }
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let section = indexPath.section
        switch section {
        case 0:
            return CGSize(width: collectionView.frame.width, height: CGFloat(180))
        default:
            // 윗변 크기 / 3 - 여백 4/3
            let side = CGFloat((collectionView.frame.width / 3) - (4/3))
            // 정사각형이므로 width, height 동일
            return CGSize(width: side, height: side)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        // 열간 간격
        switch section {
        case 0:
            return CGFloat(0)
        default:
            return CGFloat(1)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        // 행간 간격
        switch section {
        case 0:
            return CGFloat(0)
        default:
            return CGFloat(1)
        }
    }
}
