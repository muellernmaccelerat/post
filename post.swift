import Foundation

let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    if let data = data {
        let str = String(data: data, encoding: .utf8)
        print(str)
    }
}
task.resume()
