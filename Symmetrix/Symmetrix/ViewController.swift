//
//  ViewController.swift
//  Symmetrix
//
//  Created by Nigel Barber on 27/01/2020.
//  Copyright © 2020 Mindbrix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        guard let view = self.view as? SymmetrixView else { return }
        view.clear()
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let view = self.view as? SymmetrixView, let image = view.getImage() else { return }
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        clearButton.layer.cornerRadius = 8
        saveButton.layer.cornerRadius = 8
    }


}

