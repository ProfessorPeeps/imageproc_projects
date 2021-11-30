%This fucntion wil convert bfrom one SI uni to another

function [in, lb] = bodyConversion(cm, kg)
    in = cm * 2.54;
    lb = kg / 2.205;