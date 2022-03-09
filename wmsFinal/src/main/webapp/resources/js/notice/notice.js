$(function(){
	$(".noticeList_Btn").click(function(){
    	location.href = "noticeList.no";
    })
    
    $("#noticeTable>tbody>tr").click(function(){
    	location.href = "noticeDetail.no";
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
    
})