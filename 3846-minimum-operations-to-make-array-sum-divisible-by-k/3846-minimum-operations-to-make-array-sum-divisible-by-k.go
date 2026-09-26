func minOperations(nums []int, k int) int {
    total := 0
    for i := 0; i < len(nums); i++{
        total += nums[i]
    }
    operations := total % k
    return operations
}