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
            
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    VStack(spacing: 10) {
                        Text("Deutscher Meister")
                            .font(.headline)
                        Image("schale")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                        Text("1955")
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                    .onTapGesture {
                        selectedImage = "1955"
                        isShowingModal.toggle()
                    }
                    
                    VStack(spacing: 10) {
                        Text("DFB-Pokalsieger")
                            .font(.headline)
                        Image("dfb")
                            .resizable()
                            .frame(width: 40, height: 80)
                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                        Text("1953")
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                    .onTapGesture {
                        selectedImage = "rwe_1953"
                        isShowingModal.toggle()
                    }
                }
                .padding(.top, 50)
                
                HStack(spacing: 20) {
                    VStack(spacing: 10) {
                        Text("Niederrheinpokal")
                            .font(.headline)
                        Image("Niederpokal")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                        Text("1995\n2002\n2004\n2008\n2011\n2012\n2015\n2016\n2020")
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                    .onTapGesture {
                        selectedImage = "pokal1"
                        isShowingModal.toggle()
                    }
                    
                    VStack(spacing: 10) {
                        Text("Meister RL-West")
                            .font(.headline)
                        Image("westpokal")
                            .resizable()
                            .frame(width: 150, height: 80)
                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                        Text("2022")
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                    .onTapGesture {
                        selectedImage = "pokal2"
                        isShowingModal.toggle()
                    }
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
        .sheet(isPresented: $isShowingModal) {
            ImageDetailView(imageName: selectedImage, isPresented: $isShowingModal)
                .presentationDetents([.large,.medium,.fraction(0.75)])
        }
        
    }
}

struct TitelView_Previews: PreviewProvider {
    static var previews: some View {
        TitelView()
    }
}
