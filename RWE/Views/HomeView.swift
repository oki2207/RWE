//
//  HomeView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            Image("screen2")
                .resizable()
                .scaledToFill()
                .opacity(1.0)
                .edgesIgnoringSafeArea(.all)
        
            VStack(spacing: 20) {
                // News-Box
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(1...5, id: \.self) { index in
                                Text("News \(index)")
                                    .font(.title)
                            }
                        }
                    }
                    .frame(height: 180)
                    HStack {
                        ForEach(1...5, id: \.self) { index in
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(index == 1 ? .white : .gray)
                        }
                    }
                }
                .background(Color.white.opacity(0.7))
                .cornerRadius(10)
                
                // Nächstes Spiel
                Rectangle()
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                // Letztes Spiel
                Rectangle()
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


