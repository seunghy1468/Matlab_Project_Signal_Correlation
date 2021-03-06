# Matlab_Project_Signal_Correlation

  ## π₯ transmit n received signal
  
  * input
    * signal
      * sin
      * cos
      * pulse
      * chirp 
      
    * noise
      * standard deviation
      
    * free space path loss (μμ κ³΅κ°μμ€)
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

  ## π½ figure
  
  ![transmit n received signal](https://user-images.githubusercontent.com/47622991/121324235-7bb32400-c94b-11eb-831a-51da8ae7b662.PNG)

-----------------------------------

  ## π analog pulse compression
  
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
      * μκ°μ°¨ (μ‘μ λΆν° μμ κΉμ§ κ±Έλ¦¬λ μκ°)
      * distance
      * error rate
       
    * stretch processor 
      * μκ°μ°¨ (μ‘μ λΆν° μμ κΉμ§ κ±Έλ¦¬λ μκ°)
      * distance
      * error rate
    
    * figure
      * chirp signal
      * total signal (chirp μ νΈλ€μ ν© + noise)
      * window
      * correlation processor
      * stretch processor

----------------------------------------

  ## π figure
  
  ![analog pulse compression](https://user-images.githubusercontent.com/47622991/121325452-93d77300-c94c-11eb-92fc-f0a961791689.PNG)
