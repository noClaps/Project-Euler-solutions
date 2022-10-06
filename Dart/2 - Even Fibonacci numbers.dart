// Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

int evenFib(int lim) {
  int x = 1;
  int y = 2;
  int total = 0;

  do {
    if (x % 2 == 0) {
      total += x;
    }
    int z = x+y;
    x = y;
    y = z;
  } while (x < lim);
  
  return total;
}

void main() {
  print(evenFib(4000000));
}