//
//  RoomSearchViewController.swift
//  Sublet Finder
//
//  Created by AppLabAdmin on 9/27/16.
//  Copyright © 2016 AppLabAdmin. All rights reserved.
//

import UIKit
import GoogleMaps

class RoomSearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView(){
        //let geocoder = GMSGeocoder()
        //geocoder.reverseGeocodeCoordinate("19104"){
        //    if (status == google.maps.GeocoderStatus.OK){
        //        map.setCenter(results[0].geometry.location)
        //        var marker = google.maps.Marker(map,position:results[0].geometry.location)
        //    }
        //    else{
        //        alert("Geocode was not successful for the following reason: " + status)
        //    }
            
        //}
        
        let camera = GMSCameraPosition.camera(withLatitude: 39.95, longitude: -75.19, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 39.95, longitude: -75.19)
        marker.title = "Druxul"
        marker.snippet = "University"
        marker.map = mapView
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
