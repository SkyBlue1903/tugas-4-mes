//
//  ProfileViewController.swift
//  Tugas 4
//
//  Created by Erlangga Anugrah Arifin on 02/11/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profile: Person?
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = profile?.name
    }

}
