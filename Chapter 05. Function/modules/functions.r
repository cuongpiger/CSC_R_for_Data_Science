calc_bmi.function = function(pHeight, pWeight) {
    return (pWeight / (pWeight * pHeight))
}

bmi_evaluation.function = function(bmi) {
    res_Str = ""
    
    if (bmi < 18.5) 
        res_Str = "Gầy"
    else if (bmi < 25)
        res_Str = "Bình thường"
    else
        res_Str = "Thừa cân"
    
    return (res_Str)
}