import Foundation

class MovieService {
    func fetchMovies(completion: @escaping ([Movie]?) -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=b94fd6804e22205c54d32d46d69eda80")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }
            
            do {
                let movieResponse = try JSONDecoder().decode(MovieResponse.self, from: data)
                completion(movieResponse.results)
            } catch {
                print("Decoding error: \(error.localizedDescription)")
                completion(nil)
            }
        }.resume()
    }
}

struct MovieResponse: Decodable {
    let results: [Movie]
}
