n=50;
k=4;
t=n*n/k
matris=zeros(n,n);
for i=1:n
    for j=1:n
        matris(i,j)=randi([1 3]);
    end
end
temp=matris
pcolor(matris);
mymap=[1 0 0;0 1 0;0 0 1;];
colormap(mymap);
pause(1)
for i=1:500
    if mod(i,50)==0
        pcolor(matris);
        pause(1)
    end
    for j=1:t
        a=randi([1,50]);
        b=randi([1,50]);
        if (a>1)&&(b>1)&& (a<50) &&(b<50)
            m=randi([-1,1]);
            n=randi([-1,1]);
            while m==n && m==0
                m=randi([-1,1]);
                n=randi([-1,1]);            
            end
            matris(a,b)=matris(a+m,b+n);
        
        elseif a==1
            if b~=1 && b~=50
                m=randi([0,1]);
                n=randi([-1,1]);
                while m==n && m==0
                    m=randi([0,1]);
                    n=randi([-1,1]);           
                end
                matris(a,b)=matris(a+m,b+n)  ;              
            end
            if b==1
                m=randi([0,1]);
                n=randi([0,1]);
                while m==n && m==0
                    m=randi([0,1]);
                    n=randi([0,1]);           
                end
                matris(a,b)=matris(a+m,b+n);                
            end                
            if b==50
                m=randi([0,1]);
                n=randi([-1,0]);
                while m==n && m==0
                    m=randi([0,1]);
                    n=randi([-1,0]);           
                end
                matris(a,b)=matris(a+m,b+n) ;            
            end
            
           
        elseif a==50
            if b~=1 && b~=50
                m=randi([-1,0]);
                n=randi([-1,1]);
                while m==n && m==0
                    m=randi([-1,0]);
                    n=randi([-1,1]);           
                end
                matris(a,b)=matris(a+m,b+n);                
            end
            if b==1
                m=randi([-1,0]);
                n=randi([0,1]);
                while m==n && m==0
                    m=randi([-1,0]);
                    n=randi([0,1]);           
                end
                matris(a,b)=matris(a+m,b+n) ;               
            end                
            if b==50
                m=randi([-1,0]);
                n=randi([-1,0]);
                while m==n && m==0
                    m=randi([-1,0]);
                    n=randi([-1,0]);           
                end
                matris(a,b)=matris(a+m,b+n) ;            
            end
            
    end            
        end
end

figure;
pcolor(temp);
colormap([1 0 0 ;0 1 0 ;0 0 1])





