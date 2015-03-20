//
//  UIColor+Creater.swift
//  Rainbow UIColor Extension
//
//  Created by Reid Gravelle on 2015-03-18.
//  Copyright (c) 2015 Northern Realities Inc. All rights reserved.
//

import UIKit


extension UIColor {
    /**
    Returns a color object representing the color with the given RGB component values and has the specified opacity.
    
    :param: red The red component of the color object, specified as a value between 0 and 255.
    :param: green The green component of the color object, specified as a value between 0 and 255.
    :param: blue The blue component of the color object, specified as a value between 0 and 255.
    :param: alpha A CGFloat between 0.0 and 1.0 representing the opacity with a default value of 1.0.
    
    :returns: The UIColor object
    */

    class func createColorWith ( #red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0 ) -> UIColor {
        return UIColor (
            red: CGFloat ( red ) / 255.0,
            green: CGFloat ( green ) / 255.0,
            blue: CGFloat ( blue ) / 255.0,
            alpha: alpha )
    }
}