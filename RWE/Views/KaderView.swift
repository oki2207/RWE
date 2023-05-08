//
//  KaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.


import SwiftUI
import CoreData


struct KaderView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Player.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Player.name, ascending: true)])
    
    private var players: FetchedResults<Player>
    
    var body: some View {
        ZStack{
            Image("externalimages-2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            //Obere Leiste der KaderView
            
            VStack(spacing: 3){
                
                HStack {
                    Text("TEAM ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 390, alignment: .trailing)
                        .foregroundColor(.red)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                )
                .padding(.horizontal, 5)
                
                
                
                
                ZStack{
                        List(players) { player in
                            PlayerRow(player: player)
                        }
                        
                    }
                }
            }
        }
    }









struct KaderView_Previews: PreviewProvider {
    static var previews: some View {
        KaderView()
    }
}

