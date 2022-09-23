//
//  Note+CoreDataProperties.swift
//  
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//
//

import Foundation
import CoreData

extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var dateCreate: Date?
    @NSManaged public var text: String?
    @NSManaged public var title: String?

}
