//
//  TGetDevice.swift
//  Demo
//
//  Created by Hoang Quan Tran on 7/4/17.
//  Copyright © 2017 Hoang Quan Tran. All rights reserved.
//

import Foundation
import Device

enum TypeDevice {
    
    case SMALL
    case NORMAL
    
}

class TGetDevice {
    
    class func getTypeDevice() -> TypeDevice {
        if Device.size() == .screen3_5Inch || Device.size() == .screen4Inch {
            return TypeDevice.SMALL
        }
        else {
            return TypeDevice.NORMAL
        }
    }
    
}
