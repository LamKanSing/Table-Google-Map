//
//  ViewController.swift
//  Table Google Map
//
//  Created by kan sing lam
//  Copyright © 2018年 kan sing lam. All rights reserved.
//

import UIKit

class LocationListViewController : UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var locationList : [MapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocationList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        cell.textLabel?.text = locationList[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "MapSegue", sender: indexPath);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "MapSegue") {
            let controller = segue.destination as! MapViewController
            
            let sender = sender as! IndexPath
            controller.latitude = locationList[sender.row].latitude
            controller.longitude = locationList[sender.row].longitude
            controller.name = locationList[sender.row].name
            
        }
    }
    
    private func setLocationList(){
        locationList.append(MapItem("Tokyo", 35.65, 139.83))
        locationList.append(MapItem("Hong Kong", 22.3, 114.17))
        locationList.append(MapItem("Beijing", 39.91, 116.36))
        locationList.append(MapItem("Bangkok", 13.73, 100.52))
    }
}

