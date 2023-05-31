//
//  P1View.swift
//  about
//
//  Created by Allen Jeffrey on 31/5/23.
//

import SwiftUI

struct P1View: View {
    @State private var score = 0
    @State private var sheet = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            HStack{
                Image("jeffrey")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                VStack{
                    Button {
                        score += 1
                        if score > 5{
                            sheet = true
                        }
                    } label: {
                        Text("Allen Jeffrey")
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(10)
                    }
                    
                    Text("I like to code")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
            }
        }
        .sheet(isPresented: $sheet){
            Text("Why did you click?")
        } .presentationDetents([.medium])
    }
}

struct P1View_Previews: PreviewProvider {
    static var previews: some View {
        P1View()
    }
}
