#include <stdio.h>


// Exercice 1

int main(){
	
	int n;
	printf("Enter the number of elements in the array : ");
	scanf("%d",&n);
	
	int arr[n];
	if(n==0){
		printf("The array is void.");
	} else if(n==1){
		if(arr[0]<0){
			printf("There is no positive number.");
		}else{
			printf("The smallest positive off the array is : %d.",arr[0]);
		}
	} else{
		int arr[n];
		for(int i=0 ; i<n ; i++){
			printf("Element %d of the array : ",i+1);
			scanf("%d",&arr[i]);
		}	
	
		int smallest_positive = arr[0];
		for(int i=1 ; i<n ; i++){
			if(arr[i]>=0){
				if(smallest_positive > arr[i]){
					smallest_positive = arr[i];
				}
				
			}
			
		}
		if(smallest_positive >= 0){
			printf("The smallest positive off the array is : %d.",smallest_positive);
		}else{
			printf("There is no positive number.");
		}
	}

}





















