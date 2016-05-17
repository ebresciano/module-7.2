//
//  DetailViewController.swift
//  TableView2
//
//  Created by Eva Marie Bresciano on 5/17/16.
//  Copyright © 2016 Module 7.2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
// MARK: - OUtlets
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var day: Day?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let day = day {
        detailLabel.text = day.name
        
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
