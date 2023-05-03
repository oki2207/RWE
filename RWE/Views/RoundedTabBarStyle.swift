//
//  RoundedTabBarStyle.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct RoundedTabBarStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
    }
}

extension View {
    func roundedTabBarStyle() -> some View {
        self.modifier(RoundedTabBarStyle())
    }
}

