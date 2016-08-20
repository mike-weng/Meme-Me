//
//  Meme.swift
//  Meme Me
//
//  Created by Mike Weng on 1/23/16.
//  Copyright © 2016 Weng. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Meme: NSManagedObject {
    @NSManaged var topText:NSString
    @NSManaged var bottomText:NSString
    @NSManaged var memedImageData: NSData
    var image:UIImage?
    var memedImage:UIImage?
    
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    init( topText: String, bottomText: String, image: UIImage, memedImage: UIImage, context: NSManagedObjectContext)  {
        
        let entity = NSEntityDescription.entityForName("Meme", inManagedObjectContext: context)!
        super.init(entity: entity, insertIntoManagedObjectContext: context)
        
        
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
        self.memedImageData = UIImagePNGRepresentation(memedImage)!
    }
}