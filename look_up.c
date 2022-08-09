#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>


unsigned long long int MMM( unsigned long long int X, unsigned long long int Y, unsigned long long int M, unsigned long long int m) {
  unsigned long long int i;
  unsigned long long int T;
  unsigned long long int Xi, T0, Y0;
  unsigned long long int eta;
  unsigned long long int Xi_Y;
  unsigned long long int eta_M;

  T = 0;
  Y0 = Y & 1;
  for( i=0; i<m; i++) {
    Xi = (X >> i) & 1;



    eta = T & 1 ^ (Xi & Y0);

    
    if(Xi) {
        Xi_Y =Y; 
    }else{
        Xi_Y =0;    
    }
    
    if(eta) {
        eta_M =M; 
    }else{
        eta_M =0;    
    }
        
    T = (T + Xi_Y + eta_M) >> 1;
  }
  while ( T >= M)
    T -= M;

  return T;
}

unsigned long long int bitLength(unsigned long long  val) 
{
    unsigned long long int i;
    for (i=0; val!=0; i++){
         val >>= 1;
    }
    return i;
}

 void createLookupTable(unsigned long long* table, unsigned long long M, unsigned long long b){
    table[0] = b % M;

    //note 12 is a hardcoded value corresponding with the example used!!! (ie 4096 which is 2^12)
    for (int i = 1; i < 12 ; i++){
        table[i] = table[i-1] * table[i-1] % M;
    }
}



unsigned long long int multiply_square(unsigned long long int X, unsigned long long int n, unsigned long long int M, unsigned long long int* table){
    
    //scale x
    unsigned long long int Z = 1;
    //note : short int for this example!!
    short int i = 0;
    
    while (n != 0){

        if( 0x01 & n ){
            Z = Z* table[i] % M;
        }
        n = n >>1;
        i++;
    }
    return Z;
}


//Caclulates
//X * Y mod M, where m is bit length


// C -> cipher text
// D -> private key
unsigned long long decrypt(unsigned long long C, unsigned long long D ,unsigned  long long prod){
    
    unsigned long long int table[12];
    createLookupTable(table , prod, C);
    unsigned long long int result= multiply_square(C, D,prod, table);
    return result;
}

// T -> Plain text
// E -> prublic_key 
unsigned long long int encrypt(unsigned long long T,unsigned  long long E ,unsigned  long long prod ){
    
    unsigned long long int table[12];
    createLookupTable(table , prod, T);

    unsigned long long int result= multiply_square(T, E,prod, table);
    return result;

}

int main( void) {
    size_t start, end, total_t;
    
    start = clock();
    
    unsigned long long int P = 61;
    unsigned long long int Q = 53;
    unsigned long long int plain_text = 123;
    unsigned long long int cipher_text = 855;
    unsigned long long int public_key = 17;
    unsigned long long int private_key = 2753;

    printf("plain %llu ", plain_text);

    printf("encrypt called %llu ", encrypt(plain_text,public_key, P*Q));

    printf("decrypt %llu ", decrypt(cipher_text, private_key,  P*Q));
    
     end = clock();
//   printf("End of the big loop, end_t = %lf\n", end_t);
   
   double elapsed = (double)(end - start)/CLOCKS_PER_SEC;
   printf("Total time taken by CPU: %lf\n", elapsed );


    exit( 0);
}

