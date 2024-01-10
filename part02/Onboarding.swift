//
//  Onboarding.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/10/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack{
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top, 40)
            
            HStack {
                Image(systemName: "rectangle.stack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Albums in the Photos Widget")
                        .font(.headline)
                    Text("Enjoy your photos from any custom album in the Photos widget")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "pawprint")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Pets Albums")
                        .font(.headline)
                    Text("Enjoy your photos from any custom album in the Photos widget")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "crop.rotate")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Pinch to Crop")
                        .font(.headline)
                    Text("Enjoy your photos from any custom album in the Photos widget")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "memories")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("More Customizable Memories")
                        .font(.headline)
                    Text("Enjoy your photos from any custom album in the Photos widget")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Continue")
                    .padding()
                    // .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // 화면에 꽉차게
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    Onboarding()
}
