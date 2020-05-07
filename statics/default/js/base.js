$(".nav-list").hover(function(){
    $(this).find('ul').stop(true,true).slideDown(300)
},function(){
    $(this).find('ul').stop(true,true).slideUp(300)
})

$(".font-select").click(function(){
    $(this).toggleClass('on')
    if($(this).hasClass('on')){
        $(this).find('ul').stop(true,true).slideDown(300)
    }else{
        $(this).find('ul').stop(true,true).slideUp(300)
    }
})
$(".font-select li").click(function(){
    $(this).addClass('on')
    $(this).siblings().removeClass('on')
    var text = $(this).text()
    $(this).parent('ul').siblings('span').text(text)
})

$(".partner li:nth-child(4n)").addClass('four')

$(".menu").click(function(){
    $(this).toggleClass('on')
    if($(this).hasClass('on')){
        $('.ydd-nav-box').stop(true,true).slideDown(300)
    }else{
        $('.ydd-nav-box').stop(true,true).slideUp(300)
    }
})

$(".ydd-nav-li").click(function(){
    $(this).toggleClass('in')
    $(this).siblings().removeClass('in')
    $(this).siblings().find('ul').stop(true,true).slideUp(300)
    if($(this).hasClass('in')){
        $(this).find('ul').stop(true,true).slideDown(300)
    }else{
        $(this).find('ul').stop(true,true).slideUp(300)
    }
})
$(".nav-list").eq(5).find("li").eq(2).find('a').attr('target','_blank')

$(".product-intro em").hover(function(){
    $(this).siblings('.kxhxd').fadeIn()
},function(){
    $(this).siblings('.kxhxd').fadeOut()
})












