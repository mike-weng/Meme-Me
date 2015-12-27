//
//  MemeDetailViewController.swift
//  Meme Me
//
//  Created by Mike Weng on 12/26/15.
//  Copyright © 2015 Weng. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    @IBOutlet weak var memeImage: UIImageView!
    var meme:Meme!
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memeImage.image = meme.memedImage
    }
}
