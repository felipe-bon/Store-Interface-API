//
//  FakeStore.swift
//  API
//
//  Created by Student07 on 07/08/23.
//

import SwiftUI



struct FakeStore: View {
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(corP)
                .frame(width: 500, height: 80)
            Text("Fk Store")
                .foregroundColor(.white)
                .font(.system(size: 60))
                .frame(width: 350,height: 50)
                .padding()
            
        }
    }
}

struct FakeStore_Previews: PreviewProvider {
    static var previews: some View {
        FakeStore()
    }
}
