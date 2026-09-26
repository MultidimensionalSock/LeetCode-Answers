func repeatedNTimes(nums []int) int {
    n := len(nums) / 2
    freq := make(map[int]int) 
    for _ , num :=  range nums {
        freq[num] = freq[num]+1
    }
    fmt.Println(freq)
    for key , value := range freq{ 
        if value == n {
            return key
        }
    } 
    return 0 
}