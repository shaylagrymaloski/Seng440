#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define R 4096

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
    //prlong intf( "Xi = %i\n", Xi);
    //prlong intf( "T0 = %i\n", T0);
    eta = (T & 1) ^ (Xi & Y0);
    //prlong intf( "eta = %i\n", eta);
  
    
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
        
    //prlong intf( "eta_M = %i\n", eta_M);
    T = (T + Xi_Y + eta_M) >> 1;
    //prlong intf( "T = %i\n\n", T);
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



unsigned long long int multiply_square(unsigned long long int X, unsigned long long int n, unsigned long long int M){
    
    //get bit lenght for mmm
    unsigned long long int m = bitLength(M);
    
    //R squared used to for scale factor
    unsigned long long int R2 = R*R % M;
    
    //scale x
    unsigned long long int x_scale = MMM(X, R2, M, m);
    unsigned long long int Z = 1;
    unsigned long long int P = x_scale;
    
    
    while (n != 0){
        //if current bit is 1
        
        if( 0x01 & n ){

            Z = MMM(Z, P, M, m);

        }
        
        //square!
        P = MMM(P, P, M, m);
        n = n >>1;
    }
    return Z;
}

// unsigned long long int power(unsigned long long int base, unsigned long long int expo)
//     {
//       if(expo < 0)
//         return -1;

//         unsigned long long int result = 1;
//         while (expo)
//         {
//             if (expo & 1)
//                 result *= base;
//             expo >>= 1;
//             base *= base;
//         }

//         return result;
//     }

//Caclulates
//X * Y mod M, where m is bit length


// C -> cipher text
// D -> private key
unsigned long long decrypt(unsigned long long C, unsigned long long D ,unsigned  long long prod){
    unsigned long long int result= multiply_square(C, D,prod);
    return result;
}

// T -> Plain text
// E -> prublic_key 
unsigned long long int encrypt(unsigned long long T,unsigned  long long E ,unsigned  long long prod ){

    unsigned long long int result= multiply_square(T, E,prod);
    return result;

}

int main( void) {
    
    size_t start, end;
    
    start = clock();
    
    unsigned long long int P = 61;
    unsigned long long int Q = 53;
    unsigned long long int PQ = P*Q;

    unsigned long long int plain_text = 123;
    unsigned long long int cipher_text = 855;
    unsigned long long int public_key = 17;
    unsigned long long int private_key = 2753;

    printf("plain %llu ", plain_text);
    printf("encrypt called %llu ", encrypt(plain_text,public_key, PQ));
    printf("decrypt %llu ", decrypt(cipher_text, private_key,  P*Q));
    
     end = clock();
//   printf("End of the big loop, end_t = %lf\n", end_t);
   
   double elapsed = (double)(end - start)/CLOCKS_PER_SEC;
   printf("Total time taken by CPU: %lf\n", elapsed );

  exit( 0);
}
