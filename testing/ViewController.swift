//
//  ViewController.swift
//  testing
//
//  Created by boke syo on 2020/7/19.
//  Copyright © 2020 boke syo. All rights reserved.
//


import UIKit
import CSV

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if Bundle.main.path(forResource: "DataMaps" ,ofType: "csv") != nil {
            let file = Bundle.main.path(forResource: "DataMaps" ,ofType: "csv")!
            // print(file)
            let stream = InputStream(fileAtPath: file)!
            let csv = try! CSVReader(stream: stream)
            while let row = csv.next() {
                print("\(row)")
            }
            //do whatever else you gotta do
        } else {
            //gracefully handle your error
        }
//        let stream = InputStream(fileAtPath: "/Users/richard.zheng/iOS Project/Tourist-Assistant-ongoing-/Tourist Assistant - storyboard/properties/DataMaps.csv")!
//        let csv = try! CSVReader(stream: stream)
//        while let row = csv.next() {
//            print("\(row)")
//        }
        // Do any additional setup after loading the view.
    }


}

