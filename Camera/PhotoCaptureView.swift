//
//  PhotoCaptureView.swift
//  Camera
//
//  Created by ds-mayur on 10/4/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct PhotoCaptureView: View {
    
    @Binding var showImagePicker    : Bool
    @Binding var image              : Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
