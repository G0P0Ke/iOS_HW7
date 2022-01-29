//
//  ViewController.swift
//  aaandreev_4PW5
//  Created by  Антон Андреев on 29.01.2022.

import UIKit
import CoreLocation
import MapKit

final class MapViewContoller: UIViewController {
    
    var mapView: MKMapView?
    var window: UIWindow?
    
    var scale: MKScaleView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.white
        
        self.mapView = MKMapView(frame: CGRect(x: 0, y: 20, width: (self.window?.frame.width)!, height: (self.window?.frame.height)!))
        
        
        self.mapView!.layer.masksToBounds = true
        self.mapView!.layer.cornerRadius = 5
        self.mapView!.clipsToBounds = false
        self.mapView!.translatesAutoresizingMaskIntoConstraints
            = false
        self.mapView!.showsScale = true
        self.mapView!.showsCompass = true
        self.mapView!.showsTraffic = true
        self.mapView!.showsBuildings = true
        self.mapView!.showsUserLocation = true
        
        
        self.scale = MKScaleView(mapView: mapView)
        self.scale?.scaleVisibility = .visible
        self.view.addSubview(scale!)
        
        self.view.addSubview(self.mapView!)
    }
    
    


    private func configureUI() {
        
    }
}

