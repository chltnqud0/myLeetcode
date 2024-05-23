class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    var target = image[sr][sc];
    if (target == color) {
        return image;
    }
    var m = image.length;
    var n = image[0].length;
    var dx = [1,-1,0,0];
    var dy = [0,0,1,-1];
    var visited = List.generate(m, (i) => List.generate(n, (j) => 0));
    visited[sr][sc] = 1;
    var stack = [[sr,sc]];

    while (stack.isNotEmpty) {
        var temp = stack.removeLast();
        var x = temp[0];
        var y = temp[1];
        image[x][y] = color;
        for (var i = 0; i < 4; i ++) {
            var nx = x + dx[i];
            var ny = y + dy[i];
            if (nx < 0 || nx >= m || ny < 0 || ny >= n) {
                continue;
            }
            if (image[nx][ny] == target && visited[nx][ny] ==0) {
                stack.add([nx, ny]);
            }
        }
    }

    return image;
  }
}