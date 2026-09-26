func smallestEvenMultiple(n int) int {
    count := 1  
    var val int = 1
    for val % 2 != 0{
        val = n * count 
        count++
    }
    return val
}