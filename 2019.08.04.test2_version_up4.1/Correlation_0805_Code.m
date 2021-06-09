clear all;
t = 0 : 0.01 : 2*pi ;
            f = 1;
            w = 2 * pi * f;
            L = length(t);
            A = 1;
            attenuation = 0.5;    
            SD = 1;
            d= 5; % 15000m , Time = 1ms
            TL = d/150; % 시간차
            PTP = TL/0.01; % Peak-To-Peak
       y1 = A*sin(w*t);
       y2 = attenuation*A*sin(w*t);
%******************K2-K1이 L보다 클 때 ********************************            
    if( PTP >= L )
         r = [ zeros(1,L), y1, zeros(1, round(PTP)-L), y2, zeros(1, L)];
         r = r + randn(1,length(r))*SD;
         ct1 = length(r) - L;
           for a = 0:ct1
                        c(a+1) = r(a+1:a+L)*y1';
           end
          [m,k1] = max(c);
          c2 = c(length(t)*2 : end);
          [n,k2] = max(c2);
          tl = ((k2+2*length(t))-k1)*0.01; % sec
          D = tl/2*3*100; % m/s
          plot((0:length(c)-1)*0.01, c)
          
     
%***************** K2-K1이 L보다 작을 때 *******************************      
elseif( PTP < L )
         r = [ zeros(1,L), y1(1:round(PTP)), y1((round(PTP)+1):end)+y2(1:L-round(PTP)), y2((L-round(PTP)+1):end) , zeros(1, L)];
         r1 = r + randn(1,length(r))*SD;
         ct1 = length(r) - L;
           for a = 0:ct1
                        c(a+1) = r(a+1:a+L)*y1';
           end
         r2 = [ y2, zeros(1,L)];
         ct2 = length(r2) - L;
           for a = 0:ct2
              c2(a+1) = r2(a+1:a+L)*y1'; 
           end
          [m,k1] = max(c);
          [n,k2] = max(c2);
          tl = ((k2+length(t)+round(PTP)+1)-k1)*0.01; % sec (1초당 1샘플)
          D = tl/2*3*100; % m/s 
          subplot(3,1,1)
           plot((0:length(c)-1)*0.01, c)
          subplot(3,1,2)
           plot((0:length(r)-1)*0.01, r)
          subplot(3,1,3)
           plot((0:length(c2)-1)*0.01, c2)
    end
          