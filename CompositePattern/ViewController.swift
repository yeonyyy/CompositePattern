//
//  ViewController.swift
//  CompositePattern
//
//  Created by rayeon lee on 2020/12/14.
//  Copyright © 2020 ryl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let schoolFolder : Folder = Folder(name: "학교")
        let grade1Folder : Folder = Folder(name: "1학년")
        let grade2Folder : Folder = Folder(name: "2학년")
        
        schoolFolder.add(file: grade1Folder)
        schoolFolder.add(file: grade2Folder)
        
        let enterPhoto : File = File(name: "입학사진", size: 256)
        grade1Folder.add(file: enterPhoto)
        
        let sem1Folder : Folder = Folder(name: "1학기")
        let sem2Folder : Folder = Folder(name: "2학기")
        
        grade2Folder.add(file: sem1Folder)
        grade2Folder.add(file: sem2Folder)
        
        
        let lecturePlan : File = File(name: "강의계획서", size: 120)
        sem1Folder.add(file: lecturePlan)
        
        let projFolder : Folder = Folder(name: "프로젝트")
        sem2Folder.add(file: projFolder)
        
        let draft : File = File(name: "드래프트", size: 488)
        let finalResult : File = File(name: "결과물", size: 560)
        
        projFolder.add(file: draft)
        projFolder.add(file: finalResult)
        
        schoolFolder.getSize()
        schoolFolder.remove()
    }
}
