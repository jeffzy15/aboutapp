//
//  P3View.swift
//  about
//
//  Created by Allen Jeffrey on 31/5/23.
//

import SwiftUI

struct P3View: View {
    @State private var stage = 0
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Text ("Want to know more about me?")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    Button {
                        withAnimation(Animation.easeOut(duration: 4)){
                            stage = 1
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation(Animation.easeInOut(duration: 0.5)){
                                stage = 2
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                withAnimation(Animation.easeInOut(duration: 0.2)){
                                    stage = 3
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    withAnimation(Animation.easeInOut(duration: 0.2)){
                                        stage = 4
                                    }
                                }
                            }
                        }
                    } label: {
                        Text("Start now")
                            .padding(10)
                            .font(.title3)
                            .foregroundColor(stage >= 1 ? .blue : .white)
                    }
                    .buttonStyle(.borderedProminent)
                    .scaleEffect(stage >= 1 ? 100 : 1)
                }
//                Image(systemName: "star.fill")
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                ZStack {
                    Color.blue
                    ZStack {
                        VStack(alignment: .leading) {
                            ZStack(alignment: .bottom) {
                                Image("221e4bc8-1611-4220-8a6a-84d8d21da448")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.blue)
                                    .frame(width: .infinity)
                                    .cornerRadius(12)
                                VStack(alignment: .leading) {
                                    Text("Ng Qi An")
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(.black)
                                    Text("@ng-qi-an")
                                        .foregroundColor(.gray)
                                    Rectangle()
                                        .frame(height: 0)
                                    Text("Hello there.. how are you?")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .cornerRadius(12)
                                .opacity(stage >= 3 ? 1.0 : 0.0)
                                .offset(y: stage >= 3 ? 0 : 10)
                            }
                            HStack {
                                Button {
                                    UIApplication.shared.open(URL(string: "https://pop-plays.live")!)
                                } label: {
                                    HStack {
                                        Image(systemName: "globe")
                                            .font(.title2)
                                            .bold()
                                        Text("Website")
                                    }
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                    .background(.white)
                                    .foregroundColor(.blue)
                                    .cornerRadius(10)

                                }
                                Spacer()
                                Button {
                                    UIApplication.shared.open(URL(string: "https://pop-plays.live")!)
                                } label: {
                                    HStack {
                                        Image(systemName: "arrow.triangle.branch")
                                            .font(.title2)
                                            .bold()
                                        Text("Github")
                                    }
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                    .background(.white)
                                    .foregroundColor(.blue)
                                    .cornerRadius(10)

                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            .opacity(stage >= 4 ? 1.0 : 0.0)
                            .offset(y: stage >= 4 ? 0 : 10)
                        }
                        .padding(30)
                    }
                }.opacity(stage >= 2 ? 1.0 : 0)
                    
            }
        }.ignoresSafeArea([.all])
    }
}

struct P3View_Previews: PreviewProvider {
    static var previews: some View {
        P3View()
            .preferredColorScheme(.dark)
    }
}
