//
//  ViewController.swift
//  PlayFull Project
//
//  Created by Matthew Allen Lin on 6/10/16.
//  Copyright © 2016 Matthew Allen Lin Software. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet var resource: UITextField!
    
    @IBOutlet var item: UITextField!
    
    @IBOutlet var parameter: UITextField!
    
    @IBOutlet var parameterValue: UITextField!
    
    @IBAction func getButton(sender: AnyObject) {
        print("GET TEST")
        
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/" + resource.text! + "/" + item.text!, parameters: [parameter.text!: parameterValue.text!])
            .responseJSON { response in
                
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
                
                else {
                    print("GET request failure")
                }
                
                print("\n")
        }
    }
    
    @IBAction func postButton(sender: AnyObject) {
        print("POST TEST")
        
        let parameters = [
            "foo": "bar",
            "baz": ["a", 1],
            "qux": [
                "x": 1,
                "y": 2,
                "z": 3
            ]
        ]
        
        Alamofire.request(.POST, "http://jsonplaceholder.typicode.com/", parameters: parameters)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .Success:
                    print("Validation Successful for POST");
                case .Failure(let error):
                    print(error)
                }
        }
        // HTTP body: foo=bar&baz[]=a&baz[]=1&qux[x]=1&qux[y]=2&qux[z]=3
    }
    
    
    @IBAction func deleteButton(sender: AnyObject) {
        print("DELETE TEST")
        
        Alamofire.request(.DELETE, "http://jsonplaceholder.typicode.com/")
            .validate()
            .responseJSON { response in
                switch response.result {
                case .Success:
                    print("Validation Successful for DELETE");
                case .Failure(let error):
                    print(error)
                }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

