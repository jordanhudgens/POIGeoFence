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
        println(searchBar.text)
    }

}

