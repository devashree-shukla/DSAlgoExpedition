## One-pass Hash Table

In a one-pass hash table, you iterate through your data set only once. As you iterate, you compute the hash for each item and insert it into the hash table.

### Swift Example:


func buildHashTable(_ items: [Int]) -> [Int: Int] {
    var hashTable: [Int: Int] = [:]
    
    for item in items {
        let hashValue = item.hashValue
        hashTable[hashValue] = item
    }
    
    return hashTable
}
