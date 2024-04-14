## Two-pass Hash Table

In a two-pass hash table, you first iterate through your data set to compute the hash values for each item and store them in a temporary data structure (like an array or another hash table). Then, in a second pass, you iterate through the temporary data structure to build the final hash table.

### Swift Example:

func buildHashTableTwoPass(_ items: [Int]) -> [Int: Int] {
    var tempHashTable: [Int: Int] = [:]
    
    // First pass: Compute hash values and store in tempHashTable
    for item in items {
        let hashValue = item.hashValue
        tempHashTable[hashValue] = item
    }
    
    var hashTable: [Int: Int] = [:]
    
    // Second pass: Build final hashTable
    for (key, value) in tempHashTable {
        hashTable[key] = value
    }
    
    return hashTable
}
