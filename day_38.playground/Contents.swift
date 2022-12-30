import UIKit

let jsonFromServer = """
{
    "nick_name": "개발하는 정대리",
    "job": "유튜바, 개발자",
    "user_name": "dev_jeongdaeri",
}
"""

// de code = 제이슨을 클래스, 스트럭트로 바꾸기
// en code = 제이슨으로 만들기

//EnCodable & Decodable
struct User : Decodable {
    
    var nickname: String?
    var job: String
    var myUserName: String
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name2"
        case job
        case myUserName = "user_name"
    }
    
    static func getUserFromJson(_ jsonString: String) -> Self? {
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user: \(user)")
            return user
        } catch {
            print("에러발생: \(error.localizedDescription)")
            return nil
        }
        
    }
}

let user = User.getUserFromJson(jsonFromServer)




