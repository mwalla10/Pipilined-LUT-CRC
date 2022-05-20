// ** https://stackoverflow.com/questions/2587766/how-is-a-crc32-checksum-calculated
// https://eecs.wsu.edu/~ysun/crctable.pdf

#include <stdio.h>
#include <stdbool.h>

// tables arrays for lookup fast
static bool __TABLE_INIT= false;
static unsigned int TABLE_EV[32][256];

unsigned char reverse(unsigned char b) {
   b = (b & 0xF0) >> 4 | (b & 0x0F) << 4;
   b = (b & 0xCC) >> 2 | (b & 0x33) << 2;
   b = (b & 0xAA) >> 1 | (b & 0x55) << 1;
   return b;
}

unsigned int Compute_CRC32_Simple(unsigned char * bytes, int n)
{
    const unsigned int polynomial = 0x04C11DB7; /* divisor is 32bit */
    unsigned int crc = 0xffffffff; /* CRC value is 32bit */
    unsigned char b;

    for (int j=0; j<n; j++)
    {
	b = bytes[j];
	b = reverse(b);
        crc ^= (unsigned int)(b << 24); /* move byte into MSB of 32bit CRC */

        for (int i = 0; i < 8; i++)
        {
            if ((crc & 0x80000000) != 0) /* test for MSB = bit 31 */
            {
                crc = (unsigned int)((crc << 1) ^ polynomial);
            }
            else
            {
                crc <<= 1;
            }
        }
    }

	/*
    crc = crc ^ 0xffffffff;
    // NOW REVERSE COMPLETE 32 bit WORD BIT BY BIT 
    crc = 
		 reverse((crc & 0xff000000)>>24)   + 
		(reverse((crc & 0x00ff0000)>>16)<<8)   + 
		(reverse((crc & 0x0000ff00)>>8)<<16)   + 
		(reverse((crc & 0x000000ff))<<24)    
	;
	*/

    return crc;
}

void create_copy(FILE *fp, char *fname){
	// copy the file into this
	FILE *fp2;
	char c[256];
	fp2 = fopen(fname, "r");
	int r;
	while ((r = fscanf(fp2, "%[^\n]\n", c)) != EOF) {
		fprintf(fp, c);
		fprintf(fp, "\n");
	}
	fclose(fp2);
}

// n - trailing zeroes used after byte
unsigned int CRC32_Evolve(unsigned char  byte, int evn, int mirror)
{
    const unsigned int polynomial = 0x04C11DB7; /* divisor is 32bit */
    unsigned int crc = 0x0; 
    unsigned char b;


	b = byte;
	FILE *fp;
	char fname[64];
	char sline[64];

	if (__TABLE_INIT) {
		// nothing to do - follow by lookup
	        //printf("memory-check for TABLE0 %x CRC table of %x\n",255, TABLE_0EV[255]);
	        //printf("memory-check for TABLE1 %x CRC table of %x\n",255, TABLE_1EV[255]);
	        //printf("memory-check for TABLE2 %x CRC table of %x\n",255, TABLE_2EV[255]);
	} else {
		// init all tables first 
        	for (int i = 0; i < 32; i++){
			if (i<32){
				sprintf (fname, "table__ev%d.v", i);
				fp = fopen(fname, "w");
				sprintf (fname, "module crctab_ev%d\n", i);
				fprintf(fp, fname);
				create_copy(fp, "progmem_pre.v");
				fprintf(fp, "initial begin\n");
        			for (int j = 0; j < 256; j++){
				     b = j; crc = 0;
                                     crc ^= (unsigned int)(b << 24);  //move byte into MSB of 32bit CRC 
                                     for (int k = 0; k < 8; k++)
                                     {
                                         if ((crc & 0x80000000) != 0)  //test for MSB = bit 31 
                                         {
                                             crc = (unsigned int)((crc << 1) ^ polynomial);
                                         }
                                         else
                                         {
                                             crc <<= 1;
                                         }
                                     }
				     // evolve it now
                                     for (int k=0; k<i; k++)
                                     {
                                         b = 0;
                                         crc ^= (unsigned int)(b << 24);  //move byte into MSB of 32bit CRC 
                                         for (int p = 0; p < 8; p++)
                                         {
                                             if ((crc & 0x80000000) != 0)  //test for MSB = bit 31 
                                             {
                                                 crc = (unsigned int)((crc << 1) ^ polynomial);
                                             }
                                             else
                                             {
                                                 crc <<= 1;
                                             }
                                         }
                                     }
				     // now add value to table
				     printf("storing for TABLE %d %x CRC table of %x\n",i, j, crc);
				     sprintf (sline, "    mem[8'h%0x] <= 32'h%0x ;\n", j,crc);
				     TABLE_EV[i][j] = crc;
				     fprintf(fp, sline);
				} // j 0-255
				fprintf(fp, "end\n");
				create_copy(fp, "progmem_post.v");
				fclose(fp);
			} // if i <32 
		} // i = 0-31
		__TABLE_INIT = true;

	}
	// Can tables be remembered across function calls
	if (mirror) {
		b = reverse(byte);
	} else {
		b = byte;
	}
	// now lookup table using b,n
	//printf("Returning for %x CRC table0 of %x\n",byte, TABLE_0EV[b]);
	return TABLE_EV[evn][b];


}

// This function computes CRC using the method of 
// fast memory lookup. The method requires that we 
// compute CRC using CRC + shift/evolve method
// Note CRC is never mirrored 
// Also for last cycle, not all CRC bytes are computed 
// some of them can just be shifted 
unsigned int compute_crc(unsigned char * in, int len) {
	int t;
	t = len;
	unsigned int crc;
	crc = 0xffffffff;
	unsigned char data[32]; // 0-MSB 	
	int p = 0;
	unsigned int remainder; 

	while (t) {
		if (t >=32) {
			for (int i = 31; i>=0;i--){
				data[i] = reverse(in[p]);
				p++;
			}
			data[31] = data[0] ^ (crc>>24);
			data[30] = data[0] ^ ((crc>>16)&0x00ff);
			data[29] = data[0] ^ ((crc>>8)&0x00ff);
			data[28] = data[0] ^ ((crc>>0)&0x00ff);
			remainder = 0x00000000;
			t = t-32;	
		} else {
			for (int i = 31 ; i>=t;i--){
				data[i] = 0x00;
				//printf("Setting to 0 at byte offset %d\n",i);
			}
			remainder = crc;
			for (int i = t-1 ; i>=0;i--){
				data[i] = reverse(in[p]);
				//printf("Setting-1 to %x --> %x at byte offset %d\n",in[p] , data[i], i);
				data[i] = data[i] ^ ((remainder & 0xFF000000)>>24);
				//printf("Setting-2 to %x at byte offset %d\n",data[i], i);
				remainder = (remainder & 0x00FFFFFF) <<8;
				//printf("Setting to %x at byte offset %d\n",data[i], i);
				p++;
			}
			t = 0;
			
		}

		// compute through the lookup and XOR all of them
		crc = 0;
		for (int i = 31 ; i>=0;i--){
			crc ^= CRC32_Evolve(data[i], i, 0);
			//printf("CRC at %d using data %x is %x\n",i, data[i], crc);
		}
		crc = crc ^ remainder;


	}
	return crc;

}


void create_instance(FILE *fp ,int i){
	char dd[256];
	sprintf (dd, "crctab_ev%d lookup1_%d\n", i,i);
	fprintf(fp, dd);
	fprintf(fp, "(\n");
	fprintf(fp, ".clk(i_clk),\n");
	fprintf(fp, ".rstn(i_areset_n),\n");
	sprintf (dd, ".addr({s1_data256[%d], s1_data256[%d],  s1_data256[%d],  s1_data256[%d],  s1_data256[%d], s1_data256[%d],  s1_data256[%d],  s1_data256[%d]} ),\n", i*8, (i*8)+1, (i*8)+2, (i*8)+3, (i*8)+4, (i*8)+5, (i*8)+6, (i*8)+7 );
	fprintf(fp, dd);
	sprintf (dd, ".rdata(s2c_data_crc_%d[31:0])\n", i);
	fprintf(fp, dd);
	fprintf(fp, ");\n");
	fprintf(fp, "\n");
	fprintf(fp, "\n");
}





void lookup_table() {
	FILE *fp2;
	fp2 = fopen("lookup1.v", "w");
	for (int i =0;i<32;i++){
		create_instance(fp2 ,i);
	}
	fclose(fp2);
}

void muxgen() {
	FILE *fp2;
	fp2 = fopen("mymux_v", "w");
        char dd[256];
        sprintf (dd, "5'd0: s0_data256 = i_data256;\n");
        fprintf(fp2, dd);
	for (int i =1;i<32;i++){
	   sprintf (dd, "5'd%d: s0_data256 = i_data256[%d:%d];\n", i, 255,(32-i)*8);
	   fprintf(fp2, dd);
	}
	fclose(fp2);
}




int main(int argc, char *argv[]) {


  	unsigned char inp[3] ;
	unsigned int crc;
	inp[0] = 0x61;	
	inp[1] = 0x62;	
	inp[2] = 0x63;	
	inp[3] = 0x64;
	crc = Compute_CRC32_Simple(inp,3);
	printf("Computed CRC is %x \n",crc);

	
	/*
	crc = 0;
	crc ^= CRC32_Evolve(0xFF, 3, 0);
	crc ^= CRC32_Evolve(0xFF, 2, 0);
	crc ^= CRC32_Evolve(0xFF, 1, 0);
	crc ^= CRC32_Evolve(0xFF, 0, 0);
	//crc ^= 0xFF000000; // 4th byte just moved up
	crc ^= CRC32_Evolve(0x61, 3, 1);
	crc ^= CRC32_Evolve(0x62, 2, 1);
	crc ^= CRC32_Evolve(0x63, 1, 1);
	crc ^= CRC32_Evolve(0x64, 0, 1);
	printf("Computed FIRST  CRC is %x \n",crc);

	crc = 0;
	crc ^= CRC32_Evolve(0xFF ^ (reverse(0x61)), 3, 0);
	crc ^= CRC32_Evolve(0xFF ^ (reverse(0x62)), 2, 0);
	crc ^= CRC32_Evolve(0xFF ^ (reverse(0x63)), 1, 0);
	crc ^= CRC32_Evolve(0xFF ^ (reverse(0x64)), 0, 0);
	printf("Computed SECOND  CRC is %x \n",crc);
	*/
	
	
	inp[0] = 0x61;	
	inp[1] = 0x62;	
	inp[2] = 0x63;	
	inp[3] = 0x64;
	crc = compute_crc(inp, 3); // parallel memory lookup CRC
	printf("Computed MEMORY LOOKUP CRC is %x \n",crc);
	lookup_table();
	muxgen();

}



// NOTES *******************************************************************
// For IEEE802.3, CRC-32. Think of the entire message as a serial bit stream, append 32 zeros to the end of the message. Next, you MUST reverse the bits of EVERY byte of the message and do a 1's complement the first 32 bits. Now divide by the CRC-32 polynomial, 0x104C11DB7. Finally, you must 1's complement the 32-bit remainder of this division bit-reverse each of the 4 bytes of the remainder. This becomes the 32-bit CRC that is appended to the end of the message.
//The reason for this strange procedure is that the first Ethernet implementations would serialize the message one byte at a time and transmit the least significant bit of every byte first. The serial bit stream then went through a serial CRC-32 shift register computation, which was simply complemented and sent out on the wire after the message was completed. The reason for complementing the first 32 bits of the message is so that you don't get an all zero CRC even if the message was all zeros.
