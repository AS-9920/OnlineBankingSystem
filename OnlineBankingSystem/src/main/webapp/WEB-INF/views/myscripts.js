    function showDate()
    {
        dt=new Date()
        d=dt.getDate()+"/"+(dt.getMonth()+1)+"/"+(dt.getYear()+1900)
        document.getElementById("curdt").innerHTML=d
    }