//
//  ProfileView.swift
//  UI-388
//
//  Created by nyannyan0328 on 2021/12/09.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            
          
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    
                    Text("My Prorile")
                        .font(.largeTitle.bold())
                        .foregroundColor(.black)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    VStack{
                        
                        
                        Image("Profile_Image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .offset(y: -30)
                            .padding(.bottom,-20)
                        
                        Text("Eagle Guy")
                            .font(.title.bold())
                            
                            .padding(.bottom,8)
                           
                        
                        
                        HStack(alignment: .top) {
                            
                            Image(systemName:"location.fill")
                                .font(.title3.bold())
                                .foregroundColor(.gray)
                            
                            VStack{
                                
                                Text("Address: 43 Oxford Road\nM13 4GR\nManchester, UK")
                            
                                
                                
                            }
                            
                            
                            
                            
                        }
                        .frame(maxWidth:.infinity,alignment: .leading)
                      
                        
                        
                    }
                   
                    .padding([.horizontal,.bottom])
                    .background(Color.white.cornerRadius(10))
                    .padding(.top,60)
                    
                    
                }
                .padding()
                
                
                Group{
                    
                    
                    CustomNVLink(title: "Edit Profile") {
                      LinkMainView()
                            .frame(maxWidth:.infinity,maxHeight: .infinity)
                            .background(Color("HomeBG").ignoresSafeArea())
                            .navigationBarHidden(true)
                        
                    }
                   
                    
                    
                    CustomNVLink(title: "Shopping Address") {
                        Text("B")
                        
                    }
                   
                    
                    
                    CustomNVLink(title: "Order History") {
                        Text("C")
                        
                    }
                    
                    
                    
                    CustomNVLink(title: "Cards") {
                        Text("D")
                        
                    }
                  
                    
                    
                    
                    CustomNVLink(title: "Nortifications") {
                        Text("E")
                        
                    }
                   
                    
                    
                    
                }
              
                
                
                
            
                
                
                
            }
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color("HomeBG").ignoresSafeArea())
            .navigationBarHidden(true)
            
            
            
            
        }
        
       
        
    }
    @ViewBuilder
    func CustomNVLink<content : View>(title : String,@ViewBuilder content : @escaping()->content)-> some View{
        
        
        NavigationLink {
            content()
        } label: {
            HStack{
                
                Text(title)
                    .font(.title.bold())
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
           
            .padding(.vertical,7)
            .padding(.horizontal)
            .frame(maxWidth:.infinity)
            .background(Color.white.cornerRadius(10))
            .padding(.horizontal)
            .padding(.top,20)
            
        }

        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
