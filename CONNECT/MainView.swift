//
//  MainView.swift
//  CONNECT
//
//  Created by Kosei Ban on 2022-10-04.
//

import SwiftUI

//MARK: - MainView
struct MainView: View {
    
    //MARK: - Initializa
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    
    //MARK: - Property

    //MARK: - Body
    var body: some View {
        TabView {
            //MARK: - CallView
            CallView()
                .tabItem {
                   Image(systemName: "phone")
                        .foregroundColor(.white)
                }
            
            //MARK: - HistoryView
            HistoryView()
                .tabItem {
                   Image(systemName: "clock")
                }
            
            //MARK: - ChatsView
            ChatsView()
                .tabItem {
                   Image(systemName: "bubble.right")
                }
    
            //MARK: - AccountView
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                }
        }//: TabView
    }//: Body
}


//MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
