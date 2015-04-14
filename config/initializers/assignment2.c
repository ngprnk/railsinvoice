#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    char choice;
    int matrix1[4];
    //int matrix2[4];
    
    printf ("choost betn [A] addition and [S subtraction]\n");
    printf("Choose [E] for exit");
    scanf("%c",&choice);
    
    do
    {
        if (choice=='a')
        {
            printf("hi");
            for (int i=0;i<=3;i++)
            {
                matrix1[i]=rand()%9;
                
            }
        }
		
		else if (choice=='q')
		{
			
			
		}
       
        
        
    
    }
    
    while (choice!='q');
    
    for (int i=1;i<4;i++)
    {
        printf ("%d",matrix1[i]);
        
    }
    
    return 0;
}