//
//  StorageServise.swift
//  LayoutProject
//
//  Created by Illia S. on 18.12.2020.
//

import Foundation

protocol ShowProtocol {
    var show:[Show] {get set}
    func getInfo(index:Int) -> Show
//    func addInArr(index: Int)
}

class ShowService: ShowProtocol {
    var show:[Show] = [.init(name: "jp1", language: "jp1"),
                        .init(name: "jp2", language: "jpa"),
                        .init(name: "jp3", language: "jp3"),]
    
    func getInfo(index: Int) -> Show {
        if index >= show.count {
            return show[show.count-1]
        }
        else if index < 0 {
            return show[0]
        }
        else {
            return show[index]
        }
    }
    
//    func addInArr(index: Int) -> Show {
//        return show[index]
//    }
    
}

//struct Show {
//    var name: String
//    let language: String
//}


//struct Star:EventStarProtocol {
//    var name: String
//    let surname: String
//    let age: Int
//    func getInfo() -> String {
//        return name
//    }
//}
//

