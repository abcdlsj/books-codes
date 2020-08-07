long it_cnt = 0;
long ge_cnt = 0;

long absdiff_se(long x, long y) {
    long result;
    if (x<y) {
        it_cnt++;
        result = y-x;
    }
    else {
        ge_cnt++;
        result = x - y;
    }
    return result;
}
