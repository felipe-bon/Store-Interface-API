//
//  ContentView.swift
//  API
//
//  Created by Student07 on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    LazyVGrid(columns: twoColumnGrid){
                        ForEach(viewModel.produtos){ product in NavigationLink(destination: ProductView(produto: product)){
                            VStack{
                                AsyncImage(url: URL(string:product.image!)){ image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 90, height: 80)
                                Text(product.title!)
                                    .frame(width: 100, height: 50)
                                    .padding(25)
                                    .foregroundColor(.black)
                            }
                        }
                            
                            
                        }
                        
                    }
                }
                
            }
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
