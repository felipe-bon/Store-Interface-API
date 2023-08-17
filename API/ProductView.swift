//
//  ProductView.swift
//  API
//
//  Created by Student07 on 07/08/23.
//

import SwiftUI

struct ProductView: View {
    
    var produto:Produto
    
    var body: some View {
        
        
        VStack{
            ZStack{

                ScrollView{
                    VStack{
                        
                        Text("\(produto.title!)")
                            .font(.system(size: 20))
                            .frame(width: 350,height: 50)
                            .padding()
                        
                        AsyncImage(url: URL(string:produto.image!)){ image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 400)
                                .padding()
                            
                        } placeholder: {
                            Color.gray
                        }
                        
                        Text("\(produto.description!)")
                            .frame(width: 400, height: 50)
                        HStack(spacing: 50){
                            Image(systemName: "cart.fill.badge.plus")
                                .resizable()
                            
                            Image(systemName: "suit.heart")
                                .resizable()
                            
                            Image(systemName: "arrowshape.turn.up.right")
                                .resizable()
                        }
                        
                        .frame(width: 200,height: 30)
                        Rectangle()
                            .frame(width: 500, height: 10)
                            .foregroundColor(Color.white)
                            .padding()
                        ContentView()
                    }
                    
                }
            }
            
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(produto: Produto(id: 5, title: "macBook", description: "MacBook 13 Pro", category: "Eletronico", image: "https://www.notebookcheck.info/uploads/tx_nbc2/macbook_pro_retina_13_late2013.jpg", rating: Rating(rate: 123.5, count: 15)))
    }
}
