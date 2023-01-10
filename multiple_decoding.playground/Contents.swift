import UIKit
//
//struct Person: Codable {
//
//    var name: String
//
//    // 1번쨰 API
//    enum CodingKeys: String, CodingKey {
//        case name = "nickname"
//    }
//
//    // 2번쨰 API
//    enum AnotherCodingKeys: String, CodingKey {
//        case name = "realname"
//    }
//
//    init(from decoder: Decoder) throws {
//
//        let condition = true // or false
//
//        if condition {
//            let values = try decoder.container(keyedBy: CodingKeys.self)
//            name = try values.decode(String.self, forKey: .name)
//        } else {
//            let values = try decoder.container(keyedBy: AnotherCodingKeys.self)
//            name = try values.decode(String.self, forKey: .name)
//        }
//    }
//}


let jsonFromServer = """
{
    "name2": "개발하는 정대리",
    "realname": "유튜바, 개발자",
    "nickname2": "dev_jeongdaeri",
}
"""
struct Person: Decodable {
    var name: String

    // 멀티 키에 대한 디코딩
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name, realname, nickname
    }

    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        // 코딩키들 가지고 있으면 디코딩하기
        // name, realname, nickname
        if let key = container.allKeys.filter({ CodingKeys.allCases.contains($0) }).first,
           let value = try container.decodeIfPresent(String.self, forKey: key) {
            self.name = value
        } else {
            self.name = ""
        }
    }
    
    static func getPersonFromJson(_ jsonString: String) -> Self? {
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        do {
            let person = try JSONDecoder().decode(Person.self, from: jsonData)
            print("person: \(person)")
            return person
        } catch {
            print("에러발생: \(error.localizedDescription)")
            return nil
        }
        
    }
}

let person = Person.getPersonFromJson(jsonFromServer)
