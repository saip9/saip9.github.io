import Foundation

//Opening message
var x = 50
func clearScreen() {
    while x < 50 {
        print("")
        x-=1


}


clearScreen()
print("This program sorts the words you enter alphabetically.")

print("")

//Declare variables & arrays

var unsortedArray: [String] = []



//sorting function

func sort () {
    
    //selects the words that you are using in the array
    
    for i in 0 ..< unsortedArray.count{
        
        for j in 1 ..< unsortedArray.count - i{
            
            let word2 : String = unsortedArray[j]
            
            let word1 : String = unsortedArray[j-1]
            
            for k in 0..<word2.count {
                
                //analyizes individual characters
                
                let char2 = word2[word2.index(word2.startIndex, offsetBy: k)]
                
                let char1 = word1[word1.index(word1.startIndex, offsetBy: k)]
                
                if char2 > char1 {
                    
                    //continues the loop
                    
                    break
                    
                } else if char2 < char1 {
                    
                    //swaps positions
                    
                    unsortedArray.swapAt(j, j-1)
                    
                    break
                    
                } else if char2 == char1 {
                    if char2 < char1 {
                    while char2 == char1 {
                    unsortedArray.swapAt(j, j-1)
                    break
                    }
                    }
                    if char1 > char2 {
                        break
                    }
                }
                
                
            }
            
        }
        
    }
    
}

//made for the test.txt file



while let input = readLine() {
    
    unsortedArray.append(input.lowercased())
    
}



sort()



//prints out results

for i in 0 ..< unsortedArray.count{
    
    print("\(i+1). \(unsortedArray[i])")
    
}
