$(function(){
	$(".noticeList_Btn").click(function(){
    	location.href = "noticeList.no";
    })
    
   
    
    $(".notice_enrollBtn").click(function(){
    	location.href = "noticeEnrollForm.no";
    })
    
    
     $('.faqAnswer').slideUp(0);
    $('.faqQuestion').click(function(){
    	   
    	var $an = $(this).next();
        if($an.css('display') == 'none'){
        
        	$an.siblings('p').slideUp(700);
        	
        	$an.slideDown(700);
        	
        }else{
            $an.slideUp(700);
        }
    })

    
    $("#noticeTable>tbody>tr").click(function(){
    	location.href = "noticeDetail.no?noticeNo="+ $(this).children(".nno").text();
    })


    
    $(".noticeDelete_Btn").click(function(){
    	location.href = "noticeDelete.no?filePath="+ $('#hidden_filePath').val() + "&&noticeNo="+$('input[name=HinoticeNo]').val();
    })
    
    
    
    
    $(".noticeUpdate_Btn").click(function(){
    	location.href = "noticeUpdateForm.no?noticeNo="+$('input[name=HinoticeNo]').val();
    })
    
    
})