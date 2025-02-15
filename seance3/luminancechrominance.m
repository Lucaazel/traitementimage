clear, close all, clc
A=double(imread('pool.tif'));
R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);

Y=0.299*R+0.587*G+0.114*B;
Cb=0.564*(B-Y)+128;
Cr=0.713*(R-Y)+128;

figure ,imshow(uint8(A));
title('image billard de base');

figure, imshow(uint8(R));
title('composante rouge');

figure ,imshow(uint8(G));
title('composante verte');

figure ,imshow(uint8(B));
title('composante bleu');

figure ,imshow(uint8(Y));
title('luminance');

figure ,imshow(uint8(Cb));
title('chrominance bleue');

figure ,imshow(uint8(Cr));
title('chrominance rouge');

