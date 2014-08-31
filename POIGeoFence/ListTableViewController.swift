//
//  FirstViewController.swift
//  POIGeoFence
//
//  Created by Jordan Hudgens on 8/30/14.
//  Copyright (c) 2014 Jordan Hudgens. All rights reserved.
//

import UIKit

class ListTableViewController: UIViewController, UISearchBarDelegate {
    
    
    @IBOutlet var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar!) {
        
        searchGoogle("cafe")
    }
    
    
    
    // API Stuff here
    

    
    func searchGoogle(forContent: String) {
        
        let kGOOGLE_API_KEY: String! = "AIzaSyAms5WELg7IHAGeU-X2AvqqRTjBjYG-tp0"
        //    let url = NSURL(string: ("https://maps.googleapis.com/maps/api/place/search/json?types=\(googleType)&location=\(currentCentre.latitude),\(currentCentre.longitude)&rankby=distance&sensor=true&key=\(kGOOGLE_API_KEY)"))
        
        // Cleaning the string
        var spacelessString = forContent.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        var urlPath = NSURL(string: ("https://maps.googleapis.com/maps/api/place/search/json?types=\(spacelessString)&location=33.4884450,-101.9122650&rankby=distance&sensor=true&key=\(kGOOGLE_API_KEY)"))
        
        var session = NSURLSession.sharedSession()
        
        var task = session.dataTaskWithURL(urlPath) {
            data, response, error -> Void in
            
            if ((error) != nil) {
                println(error.localizedDescription)
            }
            
            var jsonError: NSError?
            
            var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as Dictionary<String, String>
            
            println(jsonResult)
            
            if ((jsonError?) != nil) {
                println(jsonError!.localizedDescription)
            }
        }
        
        task.resume()
    }

}

