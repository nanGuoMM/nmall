$(function() {
	var computerGoodsInf = [];

	// 动态创建商品函数
	function createGoods(arrayInfo, fatherBox) {
		$.each(arrayInfo, function(index, data){
			var goodsStr = `<div class="goodsBox">
								<img src="${data.src}" alt="">
								<p class="goodsName"><a href="" title="">${data.name}</a></p>
								<p class="goodsPrice">${data.price}</p>
								<p class="buyBtn">
									<a href="goodsDetails.html" title=""><span class="selectBuy">选购</span></a>
									<span class="evaluationPerson">${data.evaluationPerson}人评价</span>
								</p>
							</div>`;
	    	fatherBox.append(goodsStr);
		});
	}

	// 去除动态创建商品的左外边距
	function removeLeftMargin(goodsClassName, num){
		$.each(computerGoodsInf, function(index, data){
	    	if (index%num == 4 ) {
	    		goodsClassName.eq(index).css('marginRight', '0');
	    	}
		});
	}

	// *********** 动态创建 *****************
	createGoods(computerGoodsInf,$('#goodsList'));
	removeLeftMargin($('.goodsBox'), 5);
	
	// ************ 回到顶部 ***************
	// 控制显示隐藏
    function scrollDisplay(evName, boundary, cssName, cssNum1, cssNum2) {
	    $(window).scroll(function () {
	        if ($(window).scrollTop() >= boundary) {
	            evName.css(cssName, cssNum1);
	        } else {
	            evName.css(cssName, cssNum2);
	        }
	    });
    }
	$('#goTop').click(function() {
		$('html,body').animate({ scrollTop: 0 }, 500);
	})
	scrollDisplay($('#goTop'), 500,'display', 'block','none');

	// ************* 控制二级菜单显示隐藏 *****************
	$('#phoneSecondMenu').hover(
	  	function () {	  		
	    	$('#phoneSecondMenu').css('display', 'block');
	  	},
	  	function () {
	    	$('#phoneSecondMenu').slideUp();
	  	}
	);
	$('#phoneSelft').hover(
	  	function () {
	    	$('#phoneSecondMenu').slideDown();
	  	},
	  	function () {
			$('#phoneSecondMenu').css('display', 'none');
	  	}
	);
	
	// 搜索框获取焦点与失去焦点
   	$('#searchBox').focus(function() {
   		$(this).css('border', '1px solid #DDD');
   		$('#firstSearchText').css('display','none');
   		$('#secondSearchText').css('display','none');
   		$('.searchHistory').css('display','block');
   	})
   
   	$('.searchHistory ul li').click(function() {
   		$('#searchBox').val($(this).html()).css('border', '1px solid #FFFFFFFF');  		
   		$('.searchHistory').css('display','none');

   	})
  
	$('#searchBox').blur(function() {
		 setTimeout(function() { 	// 解决blur事件和click事件冲突
	   		$(this).css('border', '1px solid #FFFFFFFF');
	   		$('.searchHistory').css('display','none');
	   		if($('#searchBox').val() == '') {
				$('#firstSearchText').css('display','block');
				$('#secondSearchText').css('display','block');
	   		} 		
   		},100);
   	});
})