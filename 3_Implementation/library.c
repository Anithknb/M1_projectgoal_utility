/**
 * @file library.c
 * @author your anithknb (anithsmirk@gmail.com)
 * @brief code for library management 
 * @version 0.1
 * @date 2022-02-22
 * 
 * @copyright Copyright (c) 2022
 * 
 */
// This project is an small idea which helps the librarian in fetching data.
// It also helps in adding data to the books available in the library.
// This program gives the details about the Books present in the library.


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/**
 * @brief gather infortmations about a book 
 * @param book name, author, page numbers, price 
 * @return with test cases
 * 
 */
 
 // we use three functions char, int and float. 
 // Book name, author, number of pages, price are the four inputs

struct library {
    char book_name[20];
    char author[20];
    int pages;
    float price;
};
 
 // I have included the while function for 5 
 // An welcome note to greet the user
 // adding book informations 

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
 
       // using switch function to transfer the inputs to the case 1
        switch (input) {
 /**
  * @brief case 1, case2, case3
  *  @return with the final value 
  * 
  */
       
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
