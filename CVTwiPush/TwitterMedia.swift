//
//  TwitterMedia.swift
//  CVTwiPush
//
//  Created by 范艺晨 on 2020/10/9.
//

import Foundation
import UIKit

struct TwitterMedia:Identifiable,Hashable{
    
    var id:String
    var url:String
    var previewImageURL:String
    var type:Int
    var cachedImagePreview:UIImage?
    var cachedImage:UIImage?
    
    enum TwitterMediaType{
        case image
        case video
    }
}
