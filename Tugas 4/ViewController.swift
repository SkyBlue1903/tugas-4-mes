//
//  ViewController.swift
//  Tugas 4
//
//  Created by Erlangga Anugrah Arifin on 01/11/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    let controller = UIHostingController(rootView: DeveloperProfileView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func developerSwiftUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: DeveloperProfileView())
    }
    
}

