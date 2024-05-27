class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        dict_r = {}
        dict_m = {}
        for i in ransomNote:
            if i in dict_r:
                dict_r[i] += 1
            else:
                dict_r[i] = 1

        for i in magazine:
            if i in dict_m:
                dict_m[i] += 1
            else:
                dict_m[i] = 1

        for k, v in dict_r.items():
            if k not in dict_m:
                return False
            if v > dict_m[k]:
                return False
        else:
            return True