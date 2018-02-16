//
//  ViewController.swift
//  NetworkingRequest
//
//  Created by Ksyunia on 16/02/2018.
//  Copyright © 2018 Ksyunia Efimova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlRequest = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: urlRequest) else{ return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            print(" HERE !")
            guard let data = data else {return}
            do{
                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else {return}
                let course = Course(json: json)
                print(course)
            }catch let jsonErr{
                print(jsonErr)
            }
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

