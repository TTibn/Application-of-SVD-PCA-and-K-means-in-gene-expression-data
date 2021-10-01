# Topic 1


pkg load statistics

#Read the gene expressions values from the data.txt file 
data=dlmread("data3.txt", "\t", 0, 0);

#Application of the principal component analysis (princomp) algorithm to reduce variables (genes in our case)
#Visualisation of the data for the first 2 new variables (principal components)
#In red the samples that are cancerous (the first 10) and with blue the healthy ones (the remaining 10). 
 
data=data';
[W,pc]=princomp(data);
pc=pc';
W=W';
figure(1);
plot( pc(1,1:10), pc(2,1:10), "*r");
hold on;
plot( pc(1,11:20), pc(2, 11:20), "*b");
hold off;

#Elimination of the noise from microarray data with the use of eigenvalues  
[U,S,V]=svd(data);

# Visualisation of the  Bar chart of the% relative contribution of each individual value to the total sum of the resulting values 
sum=0;
for i=1:rows(S)
  for j=1:columns(S)
    sum=sum+S(i,j);
   endfor
endfor
S_shrt=S[1:20,1:20];
for i=1:rows(S)
  for j=1:columns(S)
    contr=S_shrt./sum;
    contr=contr.*100;
   endfor
endfor
bar(contr,sum);


#Zero all S values except the first and second eigenvalues
k=S(1,1);
g=S(2,2);
for i=1:rows(S)
  for j=1:columns(S)
    S(i,j)=0;
  endfor
endfor
S(1,1)=k;
S(2,2)=g;

#Creation of the "compressed" nSVD array by multiplying the U array, the new S from the previous step and the inverse of V. 
nSVD=U*S*V';

#Application of the PCA algorithm to the new nSVD array and visualisaqtion af the results
nSVD=nSVD';
[W,pc]=princomp(nSVD);
pc=pc';
W=W';
figure(2);
plot( pc(1,1:10), pc(2,1:10), "*r");
hold on;
plot( pc(1,11:20), pc(2, 11:20), "*b");
hold off;