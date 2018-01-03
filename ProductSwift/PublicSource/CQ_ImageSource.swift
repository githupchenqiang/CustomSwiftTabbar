//
//  CQ_ImageSource.swift
//  ProductSwift
//
//  Created by chenq@kensence.com on 2018/1/3.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

import UIKit

class CQ_ImageSource: NSObject {
    
    class func getImgView(_ imgName:NSString)->UIImage {
        
        var image : UIImage = UIImage(named: imgName as String)!
        image = image.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        
        return image
    }
    
    
}
