//
//  CallButtonView.swift
//  CONNECT
//
//  Created by Kosei Ban on 2022-10-04.
//

import SwiftUI



struct CallButtonView: View {
    
    //MARK: - Property
    @State private var animation: Double = 0.0
    @State private var isCallButtonAcctive : Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
                Circle()
                    .fill(Color.accentColor)
                    .frame(width: 210, height: 210, alignment: .center)
                
                Circle()
                    .stroke(Color.accentColor, lineWidth: 2)
                    .frame(width: 214, height: 214, alignment: .center)
                    .scaleEffect(1 + CGFloat(animation))
                    .opacity(1 - animation)
            
            
            Color.accentColor
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            
            Button {
                print("Activate Call Button")
                isCallButtonAcctive.toggle()
            } label: {
                
                Image(systemName: "phone.connection")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    
            }//: Button
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 0.0, y: 4.0)
        }//: ZStuck   //  Change Animation Function!!!!!
        .onAppear {
            if isCallButtonAcctive == true {
                withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                    animation = 1
                }//: Animation
            }//if Statment
        }//: onAppear
    }
}

struct CallButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CallButtonView()
            .previewLayout(.sizeThatFits)
    }
}
