#include <stdio.h>

int main(void){

	char str[128];
	printf("文字列を入力してください(127文字以内)\n");
	scanf("%s",str);
	printf("■入力された文字列■\n%s \n",str);
	return 0;

}
