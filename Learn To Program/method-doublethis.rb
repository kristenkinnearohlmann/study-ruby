def doubleThis num
    numTimes2 = num*2
    puts num.to_s+' doubled is '+numTimes2.to_s
end

doubleThis 44
#puts numTimes2.to_s # generates error since numTimes2 is local to method doubleThis