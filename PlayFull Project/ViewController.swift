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
    @IBOutlet var resourcesPlusItem: UITextField!
    
    @IBOutlet var parameter: UITextField!
    
    @IBOutlet var parameterValue: UITextField!
    
    func httpRequest(request: Alamofire.Method) {
        Alamofire.request(request, "http://jsonplaceholder.typicode.com/" + resourcesPlusItem.text!, parameters: [parameter.text!: parameterValue.text!])
            .responseJSON { response in
                print(response.request)  // original URL request
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
                    
                else {
                    print("Request failure")
                }
                
                print("\n")
        }
    }
    
    @IBAction func getButton(sender: AnyObject) {
        print("GET TEST")
        
        httpRequest(Alamofire.Method.GET)
    }
    
    @IBAction func postButton(sender: AnyObject) {
        print("POST TEST")
        
        httpRequest(Alamofire.Method.POST)
    }
    
    @IBAction func putButton(sender: AnyObject) {
        print("PUT TEST")
        
        httpRequest(Alamofire.Method.PUT)
    }
    
    @IBAction func patchButton(sender: AnyObject) {
        print("PATCH TEST")
        
        httpRequest(Alamofire.Method.PATCH)
    }
    
    @IBAction func deleteButton(sender: AnyObject) {
        print("DELETE TEST")
        
        httpRequest(Alamofire.Method.DELETE)
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

