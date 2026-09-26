func twoSum(nums []int, target int) []int {
    answer := []int{}
    for i := 0; i < len(nums); i++{
        for j := i+1; j < len(nums); j++{
            if j == i {
                continue
            }
            if nums[i] + nums[j] == target{
                answer = append(answer, i,  j)
                return answer
            }
        }
    }
    return answer
}