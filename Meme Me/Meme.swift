//
//  Meme.swift
//  Meme Me
//
//  Created by Mike Weng on 12/22/15.
//  Copyright © 2015 Weng. All rights reserved.
//

import Foundation
import UIKit

class Meme: NSObject {
    let topText:NSString
    let bottomText:NSString
    let image:UIImage
    let memedImage:UIImage
    
    init( topText: String, bottomText: String, image: UIImage, memedImage: UIImage)  {
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
    }
    
}