func minimumOperations(nums []int) int {
    min := 0
    for i := 0; i < len(nums); i++{
        if nums[i] % 3 != 0{
            min++
        } 
    }
    return min
}