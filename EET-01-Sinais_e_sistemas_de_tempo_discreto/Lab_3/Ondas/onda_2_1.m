
A=2.0;
f_0=1/21;
nn=0:20;
fi=0;

s=A*sin(2*pi*f_0*nn + fi);

S=fft(s);

kk=nn;

subplot(221)
stem(nn,real(s))
title( 'REAL PART of s[n] ' ) , xlabel( 'n'), ylabel('Re{s[n]}')

subplot(222)
stem(nn,imag(s))
title( 'IMAG PART of s[n] ' ) , xlabel( 'n'), ylabel('Im{s[n]}')

subplot(223)
stem(kk,real(S))
title( 'REAL PART of DFT ' ) , xlabel( 'k'), ylabel('Re{S[k]}')

subplot(224)
stem(kk,imag(S))
title( 'IMAG PART of DFT ' ) , xlabel( 'k'), ylabel('Im{S[k]}')


