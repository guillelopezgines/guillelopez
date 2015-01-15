jQuery(document).ready(function($) {
    setInterval("update()", 1000 );
    
    /*                                    
    titleHeight = $('h1').css('height');
    titleA = ['H', 'E', 'L', 'L', 'O', '<span class="bigger">!</span>'];
    titleI = 0;
    $('h1').html("");                  
    $('h1').css('height', titleHeight);    
    setTimeout("titleInterval = setInterval(showTitleLetter, 80)", 100);
    
    
    contentHeight = $('#content').css('height');
    $('.project').each(function(index){
       $(this).hide().delay(index*50).fadeIn(100); 
    });             
    $('#content').css('height', contentHeight);
     
    footerHeight = $('#footer').css('height'); 
    $('#more').hide().delay($('.project').length * 50).fadeIn(100);
    $('#footer').css('height', footerHeight);    
    */ 
    
});                                       

function showTitleLetter(){          
    var title = $('h1').html();
    title += titleA[titleI];
    $('h1').html(title);    
    titleI++;
    if(titleI == titleA.length){          
        $('h1').css('padding-top', '0');           
        $('h1').css('margin-bottom', '0');
        clearInterval(titleInterval);
    }else{
        $('h1').css('padding-top', '20px');
        $('h1').css('margin-bottom', '-20px');
    }
}

function update(){
    $(".changes").each(function(index) {  
            var time = $(this).html();
            var aTime = time.split(":");
            var days = parseInt(aTime[0]);
            var hours = parseInt(aTime[1]);
            var minutes = parseInt(aTime[2]);
            var seconds = parseInt(aTime[3]);                              
            seconds++;
            if(seconds==60){
                seconds = 0;
                minutes++;
                if(minutes==60){
                    minutes = 0;
                    hours++;
                    if(hours==24){
                        hours = 0;
                        days++;
                    }
                }
            }             
            
            if(seconds<10) seconds = "0" + seconds;
            if(minutes<10) minutes = "0" + minutes;
            if(hours<10) hours = "0" + hours;
            
            $(this).html(days+":"+hours+":"+minutes+":"+seconds);
    });
}