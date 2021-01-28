//
//  ViewController.swift
//  KatesPostmanApp
//
//  Created by KatesAndroid on 2021/1/28 AM 9: 30
//
// wanna post url like "http://katesapp2019/ios.php?name=katespostmanapp&date=20210128"

// using URLSession

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: URL
        let url = URL(string: "http://katesapp2019/ios.php")
        var req = URLRequest(url: url!, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 30
        )
        
        // TODO: Request Data
        req.httpMethod = "POST"
        req.httpBody = "name=katespostmanapp&date=20210128".data(using: .utf8)
        
        // TODO: URLSession and its DownloadTask
        let config = URLSessionConfiguration.default
        let ss = URLSession(configuration: config)
        _ = ss.dataTask(with: req){
            (data, res, err) in
            if let data = data {
                let htmlResData = String(data: data, encoding: .utf8)
                print(htmlResData!)
            }
            
        }
        
    }

}

