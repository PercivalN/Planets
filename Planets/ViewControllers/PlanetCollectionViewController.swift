//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Percy Ngan on 7/25/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    let planetController = PlanetController()

    // MARK: - View Lifecycle
    
//    over func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        collectionView?.reloadData()
//    }
 

    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
         //Configure the cell
        let planet = planetController.planets[indexPath.item]
        cell.imageView.image = planet.image
        cell.textLabel.text = planet.name
 
        return cell
    }
    
//    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {}
 }

 
