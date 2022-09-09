//code is NOT DONE, right now it can only sort 2 words, most of it is finished though, uses bubble sort we talked about

//2 arrays of strings, listWords holds words that were typed, sortedWords is where the sorted words go
var listWords: [String] = []
var sortedWords: [String] = []

var i: Int

var moreWords = true

//alphabetSort func is where the words from listWords get sorted, uses bubble sort and a swap function
//swap function still needs to be separated from the alphabetSort func to make it nicer








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

//checks if you want to enter more words to be sorted, when you type "leave" it exits and runs alphabetSort

//Opening message

print("Hello!")
print("This program sorts the words you enter alphabetically")

var requiredWords = 2
print("Please enter a word below")
if requiredWords > 0 {
if let newWord = readLine() {
    print("Please enter one more word")
    let newWord2 = readLine() 
}
}
print("If you want to enter more words, please enter each word on a new line. If at any time, you would like to stop entering new words please enter [leave] to exit the program.")


while moreWords {

    if let input = readLine() {
      if input == "leave" {
          moreWords = false
        print  ("Thank you for your input. Your words will be shorted shortly.")
       break
      }
    }
}



//-----------Need to find a way to add user the user input to the list because the input is currently a String.Type as it is assigned to readLine() --------------------
// ------------- Also,  we have to make sure that the user has to enter two words. ----------------------------------------
  
//    listWords.append(input)


alphabetSort()
//listWords.sort()

i = 0

//prints each of the words on separate lines

while i < listWords.count {
  print("\(listWords[i])")
  i += 1
}

//alphabetSort()
