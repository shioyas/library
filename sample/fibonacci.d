import std;

long n, k;
long[50] memo;

void init() {
  n = readln.chomp.to!long;
}

long fib(long n) {
  if (n <= 1) return n;
  if (memo[n] != 0) return memo[n];
  return memo[n] = fib(n - 1) + fib(n - 2);
}

void main() {
  init;
  foreach (i; 0..n) {
    i.fib.writeln;
  }
}


