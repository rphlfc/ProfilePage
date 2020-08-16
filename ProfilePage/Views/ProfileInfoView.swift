//
//  ProfileInfoView.swift
//  ProfilePage
//
//  Created by Raphael Cerqueira on 16/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ProfileInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(#colorLiteral(red: 0.4749739766, green: 0.8224945664, blue: 0.1352392733, alpha: 1)))
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("ADD FRIEND")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 45)
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 22).stroke(Color(#colorLiteral(red: 0.7804926038, green: 0.7802739739, blue: 0.7889167666, alpha: 1)), lineWidth: 2))
                }
                
                Button(action: {
                    
                }) {
                    Text("FOLLOW")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 50)
                        .background(Color(#colorLiteral(red: 0.9712386727, green: 0.1670129597, blue: 0.3322508633, alpha: 1)))
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
            }
            
            Text("Winnie Vasquez")
                .font(.system(size: 36, weight: .bold))
            
            Text("Photography")
                .font(.system(size: 18))
                .foregroundColor(.gray)
                .padding(.top)
            
            Text("I am a UI/UX designer for Websites & Mobile who likes to create powerful, pixel perfect designs.")
                .padding(.top)
            
            HStack {
                CounterView(title: "FOLLOWER", number: "2318")
                Spacer()
                CounterView(title: "FRIENDS", number: "364")
                Spacer()
                CounterView(title: "PHOTOS", number: "175")
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
        }
        .padding()
        .background(Color.white)
    }
}

struct CounterView: View {
    var title: String
    var number: String
    
    var body: some View {
        VStack {
            Text(self.title)
                .foregroundColor(.gray)
            
            Text(self.number)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.top)
        }
    }
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView()
    }
}
