//
//  AnimalsContainerViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsContainerViewModel {
    
    /// ---> Function for set data source to collection view  <--- ///
    func makeDataSource(_ view: AnimalsContainerView, objects: [[AnimalObject]]) {
        view.animalsArray = objects
        
        view.animalsView.reloadData()
    }
    
    
    /// ---> Function for make custom layout for collection view  <--- ///
    func makeCollectionLayout(_ view: AnimalsContainerView) {
        view.animalsLayout = UICollectionViewFlowLayout()
        view.animalsLayout.scrollDirection               = .horizontal
        view.animalsLayout.minimumLineSpacing            = sectionInset
        view.animalsLayout.minimumInteritemSpacing       = sectionInset

        view.animalsLayout.sectionInset = UIEdgeInsets(top: view.cellMargin,
                                                       left: 0.0,
                                                       bottom: view.cellMargin,
                                                       right: sectionInset)
        
        var width: CGFloat      = (UIScreen.main.bounds.width / 2.0) - 20.0
        var height: CGFloat     = view.bounds.size.height - 90.0
        
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
                case 1334:
                    width  = (UIScreen.main.bounds.width / 2.0) - 60.0
                    height = view.bounds.size.height - 150.0

                case 1920, 2208:
                    width  = (UIScreen.main.bounds.width / 2.0) - 40.0
                    height = view.bounds.size.height - 110.0

                default:
                    break
                }
        }
        
        view.animalsLayout.itemSize  = CGSize(width: width, height: height)

        view.animalsView.contentInset = UIEdgeInsets(top: 0.0,
                                                left: 0.0,
                                                bottom: 0.0,
                                                right: width + (sectionInset * CGFloat(view.animalsArray.count)))
        
        view.animalsView.setCollectionViewLayout(view.animalsLayout, animated: true)
    }
    
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ view: AnimalsContainerView, collection: UICollectionView, at index: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "AnimalsViewCell", for: index) as? AnimalsViewCell {
            let animals = view.animalsArray[index.item]
            
            if let first = animals.first {
                cell.viewModel.setValues(cell, object: first, at: index.item)
            }

            return cell
        }
    
        return AnimalsViewCell()
    }
    
    
    /// ---> Function for handle selection of cell in collection view  <--- ///
    func handleScrolledView(_ view: AnimalsContainerView) {
        let indexOfMajorCell = IndexGetter.indexOfCell(view.animalsLayout, array: view.animalsArray)
        
        UIView.animate(withDuration: 0.75,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
            let indexPath = IndexPath(row: indexOfMajorCell, section: 0)
            
            view.animalsLayout.collectionView!.scrollToItem(at: indexPath,
                                                            at: .left,
                                                            animated: false)
        }, completion: { flag in
            NotificationCenter.default.post(name: reloadListName,
                                            object: nil,
                                            userInfo: ["index": indexOfMajorCell])
        })
    }
}
