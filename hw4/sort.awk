BEGIN{
    RS=",";
    ct=0
}
{
    if ($0 != "")
        data[++ct]=$0
}
function compare(i1, v1, i2, v2)
{
    split(v1,a1," ")
    split(v2,a2," ")

    if (a1[3] < a2[3])
        return 1
    else if (a1[3] == a2[3]){
        if (a1[4] < a2[4])
            return 1
        else if (a1[4] == a2[4])
            return 0
        else
            return -1
    }
    else
        return -1
}
END{
    asort(data, result, "compare")
    for (i=1;i <= NR; i++){
        split(result[i], fields," ")
        print fields[1]
    }
}
