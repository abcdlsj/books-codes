long absdiff(int x, int y) {
  long result;
  if(x > y)
    result = x - y;
  else
    result = y - x;
  return result;
}
