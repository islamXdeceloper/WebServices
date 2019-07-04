
import UIKit
import Alamofire
import SwiftyJSON

class API: NSObject {
    class func login(email: String, password:String, completion: @escaping (_ error: Error?, _ success: Bool)->Void) {
        
        
        let url = URL.login
        let parameters = ["email": email,"password": password]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<600)
            .responseJSON { (response) in
                switch response.result
                {
                case .failure(let error):
                    print(error)
                    
                case .success(let value):
                    print(value)
                }
                       }
        
    }
    
    
}
