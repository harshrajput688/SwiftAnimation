//
//  FontManager.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 16/05/25.
//

import Foundation
import SwiftUI

enum TypefaceOne{
    case regular
    case medium
    case bold
    case semiBold
    case italic
    case light
    
    func font(size: CGFloat) -> Font{
        switch self{
            
        case .regular:
            return .custom("Ubuntu-Regular", size: size)
        case .medium:
            return .custom("Ubuntu-Medium", size: size)
        case .bold:
            return .custom("Ubuntu-Bold", size: size)
        case .semiBold:
            return .custom( "Ubuntu-SemiBold", size: size)
        case .italic:
            return .custom( "Ubuntu-Italic", size: size)
        case .light:
            return .custom("Ubuntu-Light", size: size)
        }
    }
}

enum TypefaceTwo{
    case regular
    case medium
    case bold
    case semiBold
    case italic
    case light
    
    func font(size: CGFloat) -> Font{
        switch self{
            
        case .regular:
            return .custom("NocturneSerifTest-Regular-uploaded-63b633de2e1c7", size: size)
        case .medium:
            return .custom("NocturneSerifTest-Medium-uploaded-63b633de32d04", size: size)
        case .bold:
            return .custom("NocturneSerifTest-Bold-uploaded-63b633da1aee8", size: size)
        case .semiBold:
            return .custom( "NocturneSerifTest-SemiBold-uploaded-63b633de3d9aa", size: size)
        case .italic:
            return .custom( "Ubuntu-Italic", size: size)
        case .light:
            return .custom("NocturneSerifTest-Light-uploaded-63b633de34924", size: size)
        }
    }
}
