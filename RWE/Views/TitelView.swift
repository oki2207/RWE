//
//  TitelView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TitelView: View {
    var body: some View {
        ZStack {
            Image("screen5")
                .resizable()
                .scaledToFill()
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack(spacing: 20) {
                    VStack(spacing: 20) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white.opacity(0.8))
                                .shadow(radius: 5)
                                .frame(width: 180, height: 180)
                            VStack {
                                Text("Deutscher Meister")
                                    .font(.headline)
                                Image("schale")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                Text("1955")
                                    .font(.headline)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    }

                    VStack(spacing: 20) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white.opacity(0.8))
                                .shadow(radius: 5)
                                .frame(width: 180, height: 180)
                            VStack {
                                Text ("DFB-Pokalsieger")
                                    .font(.headline)
                                Image("dfb")
                                    .resizable()
                                    .frame(width: 50, height: 100)
                                Text("1953")
                                    .font(.headline)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                    }
                }
                .padding(.top, 20)
                .padding(.bottom, 40)

                VStack(spacing: 20) {
                    Image("1955")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 160)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .frame(width: 350, height: 180)

                    Image("rwe_1953")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 160)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                        .frame(width: 350, height: 180)
                }
                .padding(.bottom, 40)

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct TitelView_Previews: PreviewProvider {
    static var previews: some View {
        TitelView()
    }
}
