var listWords: [String] = []
var sortedWords: [String] = []

var i: Int

var moreWords = true

func alphabetSort() {
  print(listWords.count)
  if listWords.count > 1 {
    for j in 0..<(listWords.count - 1) {
      var word : String = listWords[j]
      var word2 : String = listWords[j + 1]
      let char = word[word.index(word.startIndex, offsetBy: 0)]
      let char2 = word2[word2.index(word.startIndex, offsetBy: 0)]
      if char > char2 {
        var tempWord = listWords[j + 1]
        listWords[j + 1] = listWords[j]
        listWords[j] = tempWord
      } else {
      
      }
    }
  }
}

while moreWords {
  if let input = readLine() {
    if input == "leave"
      moreWords = false
      break
    }
  
    listWords.append(input)
}

alphabetSort()
//listWords.sort()

i = 0

while i < listWords.count {
  print("\(listWords[i])")
  i += 1
}

//alphabetSort()
