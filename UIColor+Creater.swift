//
//  UIColor+Creater.swift
//  Rainbow UIColor Extension
//
//  Created by Reid Gravelle on 2015-03-18.
//  Copyright (c) 2015 Northern Realities Inc. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import UIKit


extension UIColor {
    /**
    Returns a color object representing the color with the given RGB component values and has the specified opacity.
    
    :param: redValue The red component of the color object, specified as a value between 0 and 255.
    :param: greenValue The green component of the color object, specified as a value between 0 and 255.
    :param: blueValue The blue component of the color object, specified as a value between 0 and 255.
    :param: alphaValue A CGFloat between 0.0 and 1.0 representing the opacity with a default value of 1.0.
    
    :returns: The UIColor object
    */

    convenience init ( redValue: Int, greenValue: Int, blueValue: Int, alphaValue: CGFloat = 1.0 ) {
        
        let redFloat = CGFloat ( redValue ) / 255.0
        let greenFloat = CGFloat ( greenValue ) / 255.0
        let blueFloat = CGFloat ( blueValue ) / 255.0
        
        self.init ( red: redFloat, green: greenFloat, blue: blueFloat, alpha: alphaValue )
    }
    
    
    /**
    Returns a color object representing the color with the given RGB value passed in as a hexidecimal integer and has the specified opacity.
    
    :param: hex The red, green, and blue components that compromise the color combined into a single hexidecimal number.  Each component has two digits which range from 0 through to f.
    :param: alphaValue A CGFloat between 0.0 and 1.0 representing the opacity with a default value of 1.0.
    
    :returns: The UIColor object
    */
    
    convenience init ( hex : Int, alpha : CGFloat = 1.0 ) {
        
        let red = ( hex >> 16 ) & 0xff
        let green = ( hex >> 08 ) & 0xff
        let blue = hex & 0xff
        
        self.init ( redValue: red, greenValue: green, blueValue: blue, alphaValue: alpha )
    }
    
    
    /**
    Returns a color object representing the color with the given RGB value passed in as a hexidecimal integer and has the specified opacity.
    
    :param: hex The red, green, and blue components that compromise the color combined into a single hexidecimal string.  Each component has two characters which range from 0 through to f.  The string may be optionally prefixed with a '#' sign.
    :param: alphaValue A CGFloat between 0.0 and 1.0 representing the opacity with a default value of 1.0.
    
    :returns: The UIColor object
    */
    
    convenience init ( hexString : String, alpha : CGFloat = 1.0 ) {
        
        var error : NSError?
        
        var hexIntValue : UInt32 = 0x000000
        
        let stringSize = countElements( hexString )
        
        
        if ( ( stringSize == 6 ) || ( stringSize == 7 ) ) {
            
            let range = NSMakeRange( 0, stringSize )
            let pattern = "#?[0-9A-F]{6}"
            
            if let regex = NSRegularExpression ( pattern: pattern, options: .CaseInsensitive, error: &error ) {
                let matchRange = regex.rangeOfFirstMatchInString( hexString, options: .ReportProgress, range: range )
                
                if matchRange.location != NSNotFound {
                    var workingString = hexString
                    
                    if ( stringSize == 7 ) {
                        workingString = workingString.substringFromIndex( advance( workingString.startIndex, 1 ) )
                    }
                    
                    NSScanner ( string: workingString ).scanHexInt ( &hexIntValue )
                }
            }
        }
        
        
        self.init ( hex: Int( hexIntValue ), alpha: alpha )
    }
}