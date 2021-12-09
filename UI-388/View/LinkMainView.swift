//
//  LinkMainView.swift
//  UI-388
//
//  Created by nyannyan0328 on 2021/12/09.
//

import SwiftUI

struct LinkMainView: View {
    @StateObject var model = HomeViewModel()
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack{
                    
                    ForEach(model.messages){msg in
                        
                        
                        CardView(msg: msg)
                        
                        
                    }
                    
                    
                }
               
                
                
                
                
            }
            .navigationTitle("Link View")
            .safeAreaInset(edge: .bottom) {
                
                
                
                HStack{
                    
                    
                    TextField("Enter", text: $model.messageTF)
                        .textFieldStyle(.roundedBorder)
                        .textCase(.lowercase)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    
                    Button {
                        model.sendMeesage()
                    } label: {
                    
                        
                        Image(systemName: "paperplane.fill")
                            .font(.title3)
                            .padding(5)
                            .foregroundColor(.black)
                            .background(Color.gray.clipShape(Circle()))
                            
                           
                    }

                    
                    
                    
                    
                }
                .padding()
                .background(.ultraThinMaterial)
                
                
            }
        }
        .preferredColorScheme(.dark)
    }
    @ViewBuilder
    func CardView(msg : Message)-> some View{
        
        
        Group{
            
            
            if msg.previewIsLoading{
                
                if let metadata = msg.linkMetaData{
                    
                    
                    LinkView(metaData: metadata)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: getRect().width - 30)
                        .frame(maxWidth:.infinity,alignment: .trailing)
                    
                    
                        
                    
                    
                    
                }
                
                else{
                    
                    
                    HStack{
                        
                        
                        Text(msg.url?.host ?? "")
                        
                        ProgressView()
                    }
                    
                    
                }
                
                
                
            }
            
            else{
                
                
                Text(msg.message)
                    .font(.title3)
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.blue.cornerRadius(10))
                    .frame(maxWidth:.infinity,alignment: .trailing)
            }
            
            
        }
        
        
    }
}

struct LinkMainView_Previews: PreviewProvider {
    static var previews: some View {
        LinkMainView()
    }
}

extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}
