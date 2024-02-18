//
//  AnyTransitionExtension.swift
//  SwiftUITransition
//
//  Created by Raiden Yamato on 18.02.2024.
//

import SwiftUI

extension AnyTransition {
    static var offsetLeftScaleOpacity: AnyTransition {
        AnyTransition.offset(x: -600, y: 0).combined(with: .scale).combined(with: .opacity)
    }
    static var offsetRightScaleOpacity: AnyTransition {
        AnyTransition.offset(x: 600, y: 0).combined(with: .scale).combined(with: .opacity)
    }
}

