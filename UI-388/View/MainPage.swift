//
//  MainPage.swift
//  UI-388
//
//  Created by nyannyan0328 on 2021/12/09.
//

import SwiftUI

struct MainPage: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State var currentTab : Tab = .Home
    
    var body: some View {
        VStack(spacing:0){
            
            
            TabView(selection: $currentTab) {
                
                Text("A")
                    .tag(Tab.Home)
                
                Text("B")
                    .tag(Tab.Heart)
                
              ProfileView()
                    .tag(Tab.Person)
                
                Text("D")
                    .tag(Tab.Cart)
                
            }
            
            HStack(spacing:0){
                
                
                
                ForEach(Tab.allCases,id:\.self){image in
                    
                    
                    Button {
                        withAnimation{
                            
                            currentTab = image
                        }
                    } label: {
                        Image(image.rawValue)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .frame(maxWidth:.infinity)
                            .background(
                            
                            Color("Purple")
                                .blur(radius: 3)
                                .padding(-8)
                                .opacity(currentTab == image ? 0.4 : 0)
                            
                            )
                           
                    }

                    
                    
                }
                
                
            }
            .padding([.horizontal,.top])
            .padding(.bottom)
            
            
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

enum Tab : String,CaseIterable{
    
    
    case Home = "Home"
    case Heart = "Liked"
    case Person = "Profile"
    case Cart = "Cart"
}
