import Foundation

@Observable
class SongViewModel {
    // Swift에서 default 접근 지정자는 internal
    // internal은 모듈 내에서 접근 가능
    // 예를 들면, ContentView에서 접근 가능
    private var _songs: [Song] = []
    
    // Computed Property를 사용하기 위하여 var 사용
    var songs: [Song] {
        // _songs를 복사하여 value type으로 넘겨줌
        // Jetpack Compose처럼 .toList() 필요 없음
        return _songs
    }
    
    // Thread safety 보장됨
    func add(song: Song) {
        _songs.append(song)
    }
  
//    // 가능함
//    func add(song: Song) {
//        _songs += [song]
//    }
}
