#include <stdio.h>
#include <stdlib.h>
#include <string.h>
 

struct library {
    char book_name[20];
    char author[20];
    int pages;
    float price;
};
 

int main()
{
   
    struct library lib[100];
 
    char ar_nm[30], bk_nm[30];
 
        int i, input, count;
 
    i = input = count = 0;
 
        while (input != 5) {
 
        printf("\n\n********######"
               "WELCOME TO E-LIBRARY "
               "#####********\n");
        printf("\n\n1. Add book infor"
               "mation\n2. Display "
               "book information\n");
        printf("3. Exit");
 
       
        printf("\n\nEnter one of "
               "the above: ");
        scanf("%d", &input);
 
       
        switch (input) {
 
       
        case 1:
 
            printf("Enter book name = ");
            scanf("%s", lib[i].book_name);
 
            printf("Enter author name = ");
            scanf("%s", lib[i].author);
 
            printf("Enter pages = ");
            scanf("%d", &lib[i].pages);
 
            printf("Enter price = ");
            scanf("%f", &lib[i].price);
            count++;
 
            break;
 
     
        case 2:
            printf("you have entered"
                   " the following "
                   "information\n");
            for (i = 0; i < count; i++) {
 
                printf("book name = %s",
                       lib[i].book_name);
 
                printf("\t author name = %s",
                       lib[i].author);
 
                printf("\t  pages = %d",
                       lib[i].pages);
 
                printf("\t  price = %f",
                       lib[i].price);
            }
            break;
  case 3:
            exit(0);
        }
    }
    return 0;
}