$(function(){
            var today = new Date();
            var date = new Date();           

            $("input[name=preMon]").click(function() { // 이전달
                $("#calendar > tbody > td").remove();
                $("#calendar > tbody > tr").remove();
                today = new Date ( today.getFullYear(), today.getMonth()-1, today.getDate());
                buildCalendar();
            })
            
            $("input[name=nextMon]").click(function(){ //다음달
                $("#calendar > tbody > td").remove();
                $("#calendar > tbody > tr").remove();
                today = new Date ( today.getFullYear(), today.getMonth()+1, today.getDate());
                buildCalendar();
            })


            function buildCalendar() {
                
                nowYear = today.getFullYear();
                nowMonth = today.getMonth();
                firstDate = new Date(nowYear,nowMonth,1).getDate(); // 예를 들어 3월달이면 (month는 0-11 이여서 2로나옴) 2022-03-01 뜻임
                firstDay = new Date(nowYear,nowMonth,1).getDay(); //1st의 요일 3월달 기준 화요일 시작 (0=일 1=월 2=화)  2가나옴
                lastDate = new Date(nowYear,nowMonth+1,0).getDate(); // 다음달로 넘어가는 기준으로 0이기 때문에 마지막 날이 나옴 31일 출력

                
                if((nowYear%4===0 && nowYear % 100 !==0) || nowYear%400===0) { //윤년 적용 (공식같은거임 그러려니 ㅇㅇ)
                    lastDate[1]=29;
                }

                $(".year_mon").text(nowYear+"년 "+(nowMonth+1)+"월");

                for (i=0; i<firstDay; i++) { //첫번째 줄 빈칸
                    $("#calendar tbody:last").append("<td></td>"); // tbody:last 의 뜻 => Table의 마지막 Row 다음에 Row 추가하기
                }
                for (i=1; i <=lastDate; i++){ // 날짜 채우기
                    plusDate = new Date(nowYear,nowMonth,i).getDay();
                    if (plusDate==0) {
                        $("#calendar tbody:last").append("<tr></tr>"); // 일요일이면 tr추가 해주는 거 (한줄 추가해주는거)
                    }
                    $("#calendar tbody:last").append("<td class='date'>"+ i +"</td>");
                }
                if($("#calendar > tbody > td").length%7!=0) { //마지막 줄 빈칸
                    
                    for(i=1; i<= $("#calendar > tbody > td").length%7; i++) { // 이거 td가 가변이라 0이 되는 순간 for문 끝 (for문 특징임) 
                        $("#calendar tbody:last").append("<td></td>"); // 하얀색이라 별로 필요없긴함 
                    }
                }
                $(".date").each(function(index){ // 오늘 날짜 표시
                    if(nowYear==date.getFullYear() && nowMonth==date.getMonth() && $(".date").eq(index).text()==date.getDate()) { 
                    // $(".date").eq(index).text()은 (text니까 eq 0~30까지중에 getDate맞는 날짜일 때 색깔이 들어있는 클래스 속성 추가)
                        $(".date").eq(index).addClass('colToday');
                    }
                }) 
            }
            buildCalendar();
           


        })