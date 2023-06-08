#include <stdio.h>

int main(void){

	int x, n=2;
	printf("x? ");
	scanf("%d", &x);

	while (x != 1){
		if (x%n = 0){
			printf("%d", n);
			x = x/n;
			if (input != 1) printf(",");
		}else{
			n ++;
		}
	}
	printf("\n");
	return 0;
}
