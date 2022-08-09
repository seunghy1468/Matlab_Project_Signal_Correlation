# Matlab_Project_Signal_Correlation

  ## 🥕 transmit n received signal
  
  * input
    * signal
      * sin
      * cos
      * pulse
      * chirp 
      
    * noise
      * standard deviation
      
    * free space path loss (자유공간손실)
      * attenuation
      * water vapor 
    
    * doppler
      * input frequency 
 
  * output
    * value 
      * distance
      * error rate
      * time
      * attenuation
  
    * figure
      * transmit signal
      * received signal
      * total signal (+noise, path loss)
      * correlation

----------------------------------

  ## 🌽 figure
  
  ![transmit n received signal](https://user-images.githubusercontent.com/47622991/121324235-7bb32400-c94b-11eb-831a-51da8ae7b662.PNG)

-----------------------------------

  ## 🍇 analog pulse compression
  
  * input
    * signal
      * chirp (gain, mu, frequency, delta_tau)

    * noise
      * AWGN
       
    * window (filter)
      * rectangular
      * hanning
      * hamming
      * blackman
      * kaiser
      
  * output
    * correlation processor
      * time duration (송신부터 수신까지 걸리는 시간)
      * distance
      * error rate
       
    * stretch processor 
      * time duration (송신부터 수신까지 걸리는 시간)
      * distance
      * error rate
    
    * figure
      * chirp signal
      * total signal (chirp signals의 합 + noise)
      * window
      * correlation processor
      * stretch processor

----------------------------------------

  ## 🍉 figure
  
  ![analog pulse compression](https://user-images.githubusercontent.com/47622991/121325452-93d77300-c94c-11eb-92fc-f0a961791689.PNG)
