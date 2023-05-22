import UIKit

var greeting = "Hello, playground"

enum FriendType {
    case normal, best
}

struct Friend {
    var name : String
    var type : FriendType
}

var friendList = [
    Friend(name: "철수", type: .normal),
    Friend(name: "영희", type: .best),
    Friend(name: "제임스", type: .best),
    Friend(name: "수잔", type: .normal)
]

// 딕셔너리를 활용한 grouping
let groupedFriends = Dictionary(grouping: friendList, by: { (friend) -> FriendType in return friend .type} )

print(groupedFriends)
groupedFriends[.normal]
groupedFriends[.best]
