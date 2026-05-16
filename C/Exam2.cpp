#include <stdio.h>


//Exercice 2

float crystalTienDien(int soKWh){
	
	float bill;
	
	if (soKWh <= 50) {
        bill = soKWh * 500;
    } else if (soKWh <= 100) {
        bill = 50 * 500 + (soKWh - 50) * 700;
    } else {
        bill = 50 * 500 + 50 * 700 + (soKWh - 100) * 900;
    }
    
    return bill;
}

int main() {
    int kWh_values[] = {30, 80, 120};
    int n = sizeof(kWh_values) / sizeof(kWh_values[0]);
    
    for (int i = 0; i < n; i++) {
        int kWh = kWh_values[i];
        float bill = crystalTienDien(kWh);
        printf("Electricity bill for %d kWh: %.f VND\n", kWh, bill);
    }
    
    return 0;
}


