//
//  AsymetricScaleAndOffset.swift
//  SwiftUITransition
//
//  Created by Raiden Yamato on 18.02.2024.
//

import SwiftUI


extension AnyTransition {
    static var asymetricScaleAndOffset: AnyTransition {
        
        AnyTransition.asymmetric(insertion: .offsetLeftScaleOpacity, removal: .offsetRightScaleOpacity)
    }
}

