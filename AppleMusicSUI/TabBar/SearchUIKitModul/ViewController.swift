//
//  ViewController.swift
//  AppleMusicSUI
//
//  Created by 1234 on 13.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var searchController: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Search music..."
        return search
    }()
    
    private lazy var collectionView: UICollectionView = {

       let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        
        return collectionView
    }()
    
    //  MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Поиск"
        setupHierarhy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarhy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        collectionView.frame = view.bounds
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                          heightDimension: .fractionalHeight(2))
                    let item = NSCollectionLayoutItem(layoutSize: itemSize)
                    item.contentInsets = .init(top: 0, leading: 5, bottom: 5, trailing: 0)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.47),
                                                   heightDimension: .fractionalHeight(0.65 ))
                    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 4)
            group.interItemSpacing = NSCollectionLayoutSpacing.fixed(2)
            group.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                          leading: 2.5,
                                                          bottom: 10,
                                                          trailing: 2.5)

                    let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                            leading: 10,
                                                            bottom: 15,
                                                            trailing: 10)
            section.orthogonalScrollingBehavior = .groupPaging
                    return section
            
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.identifier, for: indexPath) as! Cell
        item.configuration(model: Model.all[indexPath.item])
        return item
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.all.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        present(HostingViewController(), animated: true)
    }
}

