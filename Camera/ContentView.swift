//
//  ContentView.swift
//  Camera
//
//  Created by ds-mayur on 10/4/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker : Bool = false
    @State private var image : Image? = nil
    
    var body: some View {
        NavigationView{
            
            VStack {
                
                image?.resizable().scaledToFit()
                
                Button("Open Camera"){
                    self.showImagePicker = true
                }.padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10)
            }.sheet(isPresented: self.$showImagePicker){
                PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
            }
            
            .navigationBarTitle(Text("Camera"))
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
