//
//  ViewController.swift
//  JsonDecodable
//
//  Created by NareshNaidu on 02/07/17.
//  Copyright © 2017 NareshNaidu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "http://api.letsbuildthatapp.com/jsondecodable/course") else {return}
        
       let session =  URLSession.shared.dataTask(with: url) { (data, response, Error) in
//            guard let data = data else {return}
//            let dataAsString = String(bytes: data, encoding: .utf8)
//            print(dataAsString ?? "error")
            
            do { let data = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
                print(data)
            } catch {
                print(Error ?? "dummy")
            }
            }
            session.resume()
        
        //        let myCourse = course(id: 1, name: "my course", link: "some link", imageUrl: "some image url")
        //        print(myCourse)
        
        
        
    }

}

