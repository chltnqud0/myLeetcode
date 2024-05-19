class Solution:
    def isValid(self, s: str) -> bool:
        list_s = list(s)
        dict_match = {"{": "}", "[": "]", "(": ")"}
        list_temp = []
        while list_s:
            temp = list_s.pop()
            if temp in dict_match:
                if not list_temp:
                    return False
                if dict_match[temp] != list_temp.pop():
                    return False
            else:
                list_temp.append(temp)
        if not list_temp:
            return True
