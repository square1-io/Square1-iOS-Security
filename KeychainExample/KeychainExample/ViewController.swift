//
//  ViewController.swift
//  KeychainExample
//
//  Created by Roberto Pastor Ortiz on 13/2/18.
//  Copyright © 2018 Square1. All rights reserved.
//

import UIKit
import Square1Security

class ViewController: UIViewController {

  let keychain = Keychain()
  let key = "test"
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var deleteButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let text = keychain.get(key) {
      textField.text = text
      deleteButton.isEnabled = true
    } else {
      deleteButton.isEnabled = false
    }
    
  }

  @IBAction func saveInKeychain(_ sender: Any) {
    if let text = textField.text,
      text.isEmpty == false {
        if keychain.save("Hello world", forKey: key) == true {
          deleteButton.isEnabled = true
        }
    }
  }
  
  @IBAction func deleteFromKeychain(_ sender: Any) {
    if keychain.delete(key) {
      textField.text = nil
      deleteButton.isEnabled = false
    }
  }
  

}

