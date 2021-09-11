#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// #include "libfdr/jrb.h"
#include "cgraph/cgraph.h"

typedef struct _thongtinsp
{
	int id;
	char name[64];
}thongtinsp;

typedef struct _thongtinkho
{
	int id;
	char name[64];
	int soluongsp[100];
}thongtinkho;

int main(int argc, char *argv[])
{
//đọc file sanpham.txt
	FILE *sanpham=fopen("../sanpham.txt","r");
	int m;
	fscanf(sanpham,"%d\n",&m);
	thongtinsp danhsachsp[m];
	for(int i=0;i<m;i++)
	{
		fscanf(sanpham,"%s %d",danhsachsp[i].name,&danhsachsp[i].id);
	}
	fclose(sanpham);
//đọc file khohang.txt
	FILE *khohang=fopen("../khohang.txt","r");
	int n;
	fscanf(khohang,"%d\n",&n);
	thongtinkho danhsachkho[n];
	for(int i=0;i<n;i++)
	{
		fscanf(khohang,"%s %d",danhsachkho[i].name,&danhsachkho[i].id);
		int boquaid;
		for(int j=0;j<m;j++)
		{
			fscanf(khohang,"%d %d",&boquaid,&danhsachkho[i].soluongsp[j]);
		}
	}
	int k;
	fscanf(khohang,"%d\n",&k);
	cgraph_rvec_t weights = cgraph_rvec_create();
	cgraph_ivec_t edges = cgraph_ivec_create();
	int value1,value2;
	double weight;
	for(int i=0;i<k;i++)
	{
		fscanf(khohang, "%d %d %lf\n", &value1,&value2,&weight);
		cgraph_ivec_push_back(&edges, value1);
		cgraph_ivec_push_back(&edges, value2);
		cgraph_rvec_push_back(&weights, weight);
	}
	cgraph_t g = cgraph_create(edges, 0, CGRAPH_UNDIRECTED);
	fclose(khohang);
//task 1
	if(strcmp(argv[1],"-t")==0) printf("C-Advanced, HK20202\n");
//task 2
	if(strcmp(argv[2],"sanpham.txt")==0||strcmp(argv[1],"-s")==0)
	{
		for(int i=0;i<m;i++)
		{
			printf("%s %d\n",danhsachsp[i].name,danhsachsp[i].id);
		}
	}
//task 3
	if(strcmp(argv[2],"khohang.txt")==0 && strcmp(argv[1],"-w")==0)
	{
		if(atoi(argv[4])>n||atoi(argv[4])<1||atoi(argv[5])>n||atoi(argv[5])<1)
			printf("-1\n");
		else 
		{
			cgraph_ivec_t neis = cgraph_ivec_create();
			cgraph_neighbors(g,&neis,(CGRAPH_INTEGER)atoi(argv[4]),CGRAPH_ALL);
			int kiemtra=0;
			for(int i=0; i<cgraph_ivec_size(neis);i++)
			{
				if(neis[i]==atoi(argv[5]))
				{
					kiemtra=1;
					int idcanh;
					cgraph_get_eid(g, (CGRAPH_INTEGER*)&idcanh,atoi(argv[4]),neis[i],false);
					printf("%.2lf km\n",weights[idcanh]);
				}
			}
			if(kiemtra==0) printf("-1\n");
		}
	}
//task 4
	if(strcmp(argv[2],"khohang.txt")==0 && strcmp(argv[1],"-a")==0)
	{
		for(int i=0;i<n;i++)
		{	
			printf("%s %d\n",danhsachkho[i].name,danhsachkho[i].id);
			for(int j=0;j<m;j++)
			{
				printf("%s %d\n",danhsachsp[j].name,danhsachkho[i].soluongsp[j]);
			}
			printf("----\n");
		}
	}
//task 5
	if(strcmp(argv[2],"khohang.txt")==0 && strcmp(argv[1],"-h")==0)
	{

	}
	return 0;
	cgraph_destroy(&g);
}