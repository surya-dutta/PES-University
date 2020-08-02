#include <stdio.h>
#include<time.h>

//level1-beginner
int level1()
{
    FILE* fp;
    char str[10000];
    int count1=0;
    char* filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/beginner.txt";//file path here

    fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }
    while (fgets(str, 10000, fp) != NULL)
	{
	printf("%s", str);
        count1+=1;
        }
    fclose(fp);

	printf("\n");
	printf("/- START TYPING -/");
	printf("\n");
    return 0;
}

//level2-medium
int level2()
{
    FILE* fp;
    char str[10000];
    int count1=0;
    char* filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/medium.txt";//file path here

    fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }
    while (fgets(str, 10000, fp) != NULL)
	{
	printf("%s", str);
        count1+=1;
        }
    fclose(fp);

	printf("\n");
	printf("/- START TYPING -/");
	printf("\n");
    return 0;
}

//level3-advanced
int level3()
{
    FILE* fp;
    char str[10000];
    int count1=0;
    char* filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/advanced.txt";//file path here

    fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }
    while (fgets(str, 10000, fp) != NULL)
	{
	printf("%s", str);
        count1+=1;
        }
    fclose(fp);

	printf("\n");
	printf("/- START TYPING -/");
	printf("\n");
    return 0;
}



int main()
{

    printf("WELCOME TO TYPING TUTOR");
    printf("\n\nNOTE:\nThis program analyzes your accuracy and typing speed.\nFor precise results, type the exact same number of characters as displayed in the file.\nTyping excessive or deficient number of characters will yield inaccurate results.\nPress ( 'enter' + 'ctrl+z' + 'enter' ) to stop typing.\nENJOY\n\n");
    clock_t start;
    char lev; int i1=2;


    while(i1>=1 )
    {


    printf("Select a level from options below :");
    printf("\n1:Beginner");
    printf("\n2:Medium");
    printf("\n3:Advanced");
    printf("\nYour choice:");
    scanf("%c",&lev);

      if(lev=='1')
      {
        printf("\n\nType the following:\n");
        level1();
        i1=0;
      }
      else if(lev=='2')
      {
        printf("\n\nType the following:\n");
        level2();
        i1=0;
      }
      else if(lev=='3')
      {
        printf("\n\nType the following:\n");
        level3();
        i1=0;
      }
      else
      {
        i1=9;
        printf("\nPlease enter a valid input.\n");
      }
    }


    start = clock();
    printf("\n");
    FILE* fp;
    char str[10000]; char ch;
    double count=0;
    double count2=-1;
    char* filename;
      if(lev=='1')
      {
       filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/beginner.txt";
      }
       else if(lev=='2')
      {
        filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/medium.txt";
      }
       else if(lev=='3')
      {
        filename = "C:/Users/Shivang Sud/Desktop/New folder (4)/advanced.txt";
      }



    fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }


    int i=0,j=0;
      while((ch=getc(stdin)) != EOF)
	{
        count2+=1;



        if(ch != fgetc(fp))
        {
            count+=1;

        }

}


fclose(fp);



double d=count2-count;
double c;
if(count2 == 0)
{
    c=0;
}
else
{
     c=d*100/count2;
}

printf("\nAccuracy : %.2lf%% \n",c);
start = clock() -start;

double duration = (((double)start)/CLOCKS_PER_SEC)-0.75;
printf("Time taken in seconds : %.2fs\n", duration);
double speed=((60*d)/(5*duration));
printf("Speed in Words Per Minute : %.2f WPM\n", speed);

return 0;
}



