//
//  TabBar.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        HStack {
            TabBarButton(selectedTab: $selectedTab, index: 0, imageName: "house", title: "Hafenstrasse")
                .frame(maxWidth: .infinity)
            TabBarButton(selectedTab: $selectedTab, index: 1, imageName: "person.3.fill", title: "Kader")
                .frame(maxWidth: .infinity)
            TabBarButton(selectedTab: $selectedTab, index: 2, imageName: "calendar", title: "Spielplan")
                .frame(maxWidth: .infinity)
            TabBarButton(selectedTab: $selectedTab, index: 3, imageName: "list.number", title: "Tabelle")
                .frame(maxWidth: .infinity)
            TabBarButton(selectedTab: $selectedTab, index: 4, imageName: "rosette", title: "Titel")
                .frame(maxWidth: .infinity)
        }
        .background(Color.red)
        .foregroundColor(.white)
        .font(Font.custom("Wilderness", size: 20))
        .padding(.horizontal, 0)
    }
            
}

struct TabBarButton: View {
    @Binding var selectedTab: Int
    let index: Int
    let imageName: String
    let title: String
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: imageName)
                .font(.system(size: 22))
            Text(title)
                .font(.system(size: 8))
                .fontWeight(.semibold)
        }
        .padding(8)
        .background(selectedTab == index ? Color.white.opacity(0.2) : Color.clear)
        .foregroundColor(selectedTab == index ? Color.white : Color.white.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .onTapGesture {
            self.selectedTab = index
        }
    }
}
