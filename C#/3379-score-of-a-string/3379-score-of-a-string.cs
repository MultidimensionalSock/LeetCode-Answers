public class Solution {
    public int ScoreOfString(string s)
    {
        int total = 0;
        for (int i = 0; i < s.Length-1; i++)
        {
            total += (int)MathF.Abs(((int)s[i] - (int)s[i + 1]));
        }
        return total;
    }
}