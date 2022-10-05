//
//  CallViewLabel.swift
//  CONNECT
//
//  Created by Kosei Ban on 2022-10-04.
//

import SwiftUI

struct CallViewLabel: View {
    
    //MARK: - Property
    var ImageName : String
    var LabelTitle : String
    var value: String
    
    
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: "\(ImageName)")
              .font(.system(size: 30, weight: .semibold, design: .rounded))
            Text("\(LabelTitle) : \(value)")
              .font(.system(size: 24, weight: .bold, design: .rounded))
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .frame(width: 300)
        .background(
            Color.accentColor
                .clipShape(Capsule())
        )
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 0.0, y: 4.0)
    }
}

//MARK: - PreView
struct CallViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        CallViewLabel(ImageName: "person.3.fill", LabelTitle: "Online", value: "121")
            .previewLayout(.sizeThatFits)
    }
}
