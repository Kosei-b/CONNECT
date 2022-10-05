//
//  ContentView.swift
//  CONNECT
//
//  Created by Kosei Ban on 2022-10-04.
//

import SwiftUI

struct CallView: View {
    //MARK: - Property
   
    
    //MARK: - Body
    var body: some View {
        ZStack {
            
            //BackGround
            Color("BackGround")
                .ignoresSafeArea(.all)
            
            VStack(spacing: 10) {
                
                Spacer()
                //MARK: -  Call Button

               CallButtonView()
                
                // Text(Tap to start call)
                Text("Tap to start call")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.vertical,30)
                
                Spacer()
                // Selected Language label
                CallViewLabel(ImageName: "character.book.closed", LabelTitle: "Language", value: "English")
                
                // Online People
                CallViewLabel(ImageName: "person.3.fill", LabelTitle: "OnLine", value: "121")
                
                Spacer()
                
            }//: Vstack
        }//: ZStack
    }//: Body
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
