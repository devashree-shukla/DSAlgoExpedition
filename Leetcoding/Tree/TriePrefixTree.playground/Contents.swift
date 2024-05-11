
class Trie {
    
    private final class TrieNode {
        var childeren = [Character: TrieNode]()
        var endOfWord = false
    }

    private let root: TrieNode
    
    init() {
        root = TrieNode()
    }
    
    func insert(_ word: String) {
        var current: TrieNode? = root
        for c in word {
            if current?.childeren[c] == nil {
                current?.childeren[c] = TrieNode()
            }
            current = current?.childeren[c]
        }
        current?.endOfWord = true
    }
    
    func search(_ word: String) -> Bool {
        var current: TrieNode? = root
        for c in word {
            if current?.childeren[c] == nil {
                return false
            }
            current = current?.childeren[c]
        }
        return current!.endOfWord
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var current: TrieNode? = root
        for c in prefix {
            if current?.childeren[c] == nil {
                return false
            }
            current = current?.childeren[c]
        }
        return true
    }
}
