class Solution:
    def addBinary(self, a: str, b: str) -> str:
        aa = int(a, 2)
        bb = int(b, 2)
        cc = aa + bb
        c = bin(cc)
        return c[2:]