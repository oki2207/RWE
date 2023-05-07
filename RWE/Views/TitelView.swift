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
                            Spacer()
                            Text("DEUTSCHER MEISTER ")
                                .font(.custom("SignPainter", size: 20))
                            Image("schale")
                                .resizable()
                                .frame(maxWidth: 100, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("1955 ")
                                .font(.custom("SignPainter", size: 20))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .frame(maxWidth: 380)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "1955"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Spacer()
                            Text("DFB-POKALSIEGER ")
                                .font(.custom("SignPainter", size: 20))
                            Image("dfb")
                                .resizable()
                                .frame(maxWidth: 50, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("1953 ")
                                .font(.custom("SignPainter", size: 20))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .frame(maxWidth: 380)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "rwe_1953"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Spacer()
                            
                            Text("NIEDERRHEINPOKAL")
                                .font(.custom("SignPainter", size: 20))
                            Image("Niederpokal")
                                .resizable()
                                .frame(maxWidth: 80, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            
                            Text("1995")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("2002")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Text("2004")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .frame(maxWidth: 380)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "pokal1"
                            isShowingModal.toggle()
                        }
                        VStack {
                            Spacer()
                            Text("MEISTER RL-WEST ")
                                .font(.custom("SignPainter", size: 20))
                            Image("westpokal")
                                .resizable()
                                .frame(maxWidth: 120, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            Text("2022 ")
                                .font(.custom("SignPainter", size: 20))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .frame(maxWidth: 380)
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
