$(function (){
    var count=0;
    var items=[];
    $(".btn").click(function(){
        count=count+1;
        $("#itemcart").val((count) + " items");
       items.push($(this).siblings("p.refid").text());
       var str=items.join(",")
      $("#hid").val(str);
        
    });


});