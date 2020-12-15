//
//  CompositePattern.swift
//  CompositePattern
//
//  Created by rayeon lee on 2020/12/14.
//  Copyright © 2020 ryl. All rights reserved.
//

import Foundation

protocol FileSystem {
    func getSize()->Int
    func remove()
}

class File : FileSystem {
    
    var name : String
    var size : Int
    
    init(name : String, size :Int) {
        self.name = name
        self.size = size
    }
    
    func getSize() -> Int {
        print("\(self.name) 파일 크기 \(self.size)")
        return self.size
    }
    
    func remove() {
        print("\(self.name) 파일 삭제")
    }
}

class Folder :FileSystem {
    
    var name : String = ""
    var includeds : [FileSystem] = []
    
    init(name: String){
        self.name = name
    }
    
    func add(file : FileSystem) {
        includeds.append(file)
    }
    
    func getSize() -> Int {
        var total : Int = 0
        for include in includeds {
            total += include.getSize()
        }
        print("\(self.name) 폴더 크기 \(total)")
        print("----------------------------")
        return total
    }
    
    func remove() {
        for include in includeds {
            include.remove()
        }
        
        print("\(self.name) 폴더 삭제")
    }

}


