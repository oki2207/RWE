//
//  TitelView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//
import SwiftUI

struct TitelView: View {
    @State private var isShowingModal = false
    @State private var selectedImage: String = ""
    
    var body: some View {
        ZStack {
            Image("screen5")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        VStack {
                            Text("Deutscher Meister")
                                .font(.headline)
                            Image("schale")
                                .resizable()
                                .frame(maxWidth: 100, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("1955")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "1955"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Text("DFB-Pokalsieger")
                                .font(.headline)
                            Image("dfb")
                                .resizable()
                                .frame(maxWidth: 60, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("1953")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "rwe_1953"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Text("Niederrheinpokal")
                                .font(.headline)
                            Image("Niederpokal")
                                .resizable()
                                .frame(maxWidth: 80, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("1995\n2002\n2004\n2008\n2011\n2012\n2015\n2016\n2020")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "pokal1"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Text("Meister RL-West")
                                .font(.headline)
                            Image("westpokal")
                                .resizable()
                                .frame(maxWidth: 120, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("2022")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "pokal2"
                            isShowingModal.toggle()
                        }
                    }
                }
            }
        }
    }
    
    
    
    struct TitelView_Previews: PreviewProvider {
        static var previews: some View {
            TitelView()
        }
        
    }
}
