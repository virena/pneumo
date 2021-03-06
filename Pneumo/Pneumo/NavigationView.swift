//
//  Navigation.swift
//  Pneumo
//
//  Created by Alice Chien on 7/5/20.
//  Copyright © 2020 Alice Chien. All rights reserved.
//

import SwiftUI

struct Navigation: View {
    let buttons = [WelcomeButtons(imageName: "camera.viewfinder",
                                  text: "MY SCANS"),
                   WelcomeButtons(imageName: "doc.on.clipboard",
                                  text: "CURB-65"),
                   WelcomeButtons(imageName: "info.circle",
                                  text: "ABOUT")]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("HOME")
                    .font(.system(size: 50))
                    .fontWeight(.thin)
                    .foregroundColor(Color.gray)

                ForEach(buttons, id: \.id) { button in
                    NavigationLink(destination: {
                            VStack {
                                if button.text=="MY SCANS" {
                                    Library()
                                } else if button.text=="CURB-65" {
                                    Curb65()
                                } else {
                                    AboutPage()
                                }
                            }
                        }()) {
                        VStack {
                            Image(systemName: button.imageName)
                                .padding(40)
                                .font(.system(size: 65, weight: .thin))
                                .foregroundColor(Color("DarkShade"))
                                .overlay(Circle().stroke(Color("DarkShade"), lineWidth: 2))
                            Text("\(button.text)")
                                .foregroundColor(Color.gray)
                                //.foregroundColor(Color.purple)
                        }
                    }
                }
            }.offset(y:-50)

        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
