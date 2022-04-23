void InsertSort (ElemType A[], int n){
	int i, j, low, high, mid;
    for (i = 2; i <= n; i++){           //排序范围
        A[0] = A[i];                    //暂存空间
        low = 1;                        //折半查找
        high = i - 1;
        while (low <= high){
            mid = (low + high)/2;
            if(A[mid] > A[0])
                high = mid - 1;
            else
                low = mid + 1;
        }
        for(j = i-1; j >= high+1; j--)  //数据后移
            A[j+1] = A[j];
        A[high+1] = A[0];               //插入数据
    }
}

void ShellSort(ElemType A[], int n){
    int dk, i, j;
    for(dk = n/2; dk >= 1; dk = dk/2)
        for(i = dk + 1; i <= n; i++)
            if(A[i] < A[i-dk]){
                A[0] = A[i];
                for(j = i-dk; j>0 && A[0]<A[j]; j -= dk)
                    A[j+dk] = A[j];
                A[j+dk] = A[0];
            }
}