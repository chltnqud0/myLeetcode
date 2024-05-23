class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, color: int) -> List[List[int]]:
        dx = [0, 1, 0, -1]
        dy = [1, 0, -1, 0]
        visited = [[0 for _ in range(len(image[0]))] for __ in range(len(image))]
        visited[sr][sc] = 1
        stack = [[sr,sc]]
        value = image[sr][sc]
        if value == color:
            return image
        while stack:
            temp = stack.pop()
            for i in range(4):
                x = temp[0] + dx[i]
                y = temp[1] + dy[i]
                if x >= len(image) or x < 0:
                    continue
                if y >= len(image[0]) or y < 0:
                    continue
                if image[x][y] == value and not visited[x][y]:
                    visited[x][y] = 1
                    stack.append([x, y])
            image[temp[0]][temp[1]] = color
        return image

        