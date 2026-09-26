func numberOfEmployeesWhoMetTarget(hours []int, target int) int {
    targetHit := 0
    for i := 0; i < len(hours); i++{
        if hours[i] >= target {
            targetHit++
        }
    }
    return targetHit
}