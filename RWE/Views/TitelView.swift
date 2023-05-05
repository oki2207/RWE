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
                
                VStack(spacing: 20) {
                    Image("1955")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "1955"
                            isShowingModal.toggle()
                        }
                    
                    Image("rwe_1953")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .onTapGesture {
                            selectedImage = "rwe_1953"
                            isShowingModal.toggle()
                        }
                }
                .padding(.top, 30)
                
                Spacer()
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
