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
        VStack {
            Text("About")
                .font(.title)
                .fontWeight(.light)
                .padding(10)
                .foregroundColor(Color("DarkShade"))
            Text("Pneumonia remains a leading cause of mortality worldwide, disproportionately affecting developing countries. Chest radiology is strongly recommended when pneumonia is suspected, as it is a valuable screening tool, can analyze the severity of the disease, and guide medical treatments.")
                .font(.system(size: 14))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Text("Despite the pressing need for a rapid, accessible and data-driven approach towards analyzing suspected x-rays for pneumonia confirmation, a current solution does not exist.")
            .font(.system(size: 14))
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .padding(10)
            Text("We developed Pneumo, a low-cost, high-speed, and user-friendly iOS app that utilizes artificial intelligence to rapidly determine chest x-ray scans as pneumonia positive or negative.")
                .font(.system(size: 14))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
            Text("How It Works")
                .font(.title)
                .fontWeight(.light)
                .padding(10)
                .foregroundColor(Color("DarkShade"))
            Text("Pneumo is developed in CoreML and XCode and uses convolutional neural network algorithms (CNN) to quickly and automatically detect the presence of community-acquired pneumonia or covid-induced pneumonia on x-ray scans. The CNN is trained on a dataset of over 10,000 images and uses characteristic pathological features including airspace opacity, lobar consolidation, and interstitial opacities to identify potential pneumonia. Pneumo has a 92% accuracy rate and something validation rate.")
                .font(.system(size: 14))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
            Text("Disclaimer")
                .font(.title)
                .fontWeight(.light)
                .padding(10)
                .foregroundColor(Color("DarkShade"))
            Text("Computer vision analysis is not 100% accurate. Pnuemo detects the potential presence of pneumonia based on similar images but should not replace physical evaluation by a trained doctor.")
                .font(.system(size: 14))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 40, trailing: 10))
            Spacer()
        }
        .offset(y: 20)
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage()
    }
}

