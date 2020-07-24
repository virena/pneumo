//
//  ContentView.swift
//  Swift UI Practice 2
//
//  Created by Alice Chien on 7/3/20.
//  Copyright © 2020 Alice Chien. All rights reserved.
//

import SwiftUI

struct AboutPage: View {
    var body: some View {
            NavigationView {
                VStack {
                        Text("INFORMATION")
                            .font(.largeTitle)
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.black)
                            .padding(10)
                        Text("Pneumonia remains a major health problem worldwide, disproportionately affecting developing countries and remaining a leading cause of mortality. Chest radiology is strongly recommended when pneumonia is suspected, as it is a valuable screening tool, can analyze the severity of the disease, and guide medical procedures.")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        Text("Despite the pressing need for a rapid, accessible and data-driven approach towards analyzing suspected x-rays for pneumonia confirmation, a current solution does not exist.")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        Text("We developed Pneumo, a low-cost, high-speed, and user-friendly iOS app that utilizes artificial intelligence to rapidly diagnose chest x-ray scans as pneumonia positive or negative.")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        Text("How It Works")
                            .font(.title)
                            .fontWeight(.ultraLight)
                        Text("Pneumo is developed in CoreML and XCode and uses convolutional neural network algorithms (CNN) to quickly and automatically detect the presence of community-acquired pneumonia or covid-induced pneumonia on x-ray scans. The CNN is trained on a dataset of over 10,000 images and uses characteristic pathological features including airspace opacity, lobar consolidation, and interstitial opacities to identify potential pneumonia. Pneumo has a 92% accuracy rate and something validation rate.  ")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        Text("Disclaimer")
                            .font(.title)
                            .fontWeight(.ultraLight)
                    Spacer()
                    }
                .navigationBarHidden(true)
                .navigationBarTitle("")
            }
        }
    }

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage()
    }
}

