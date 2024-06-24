//header menu btn click
var menu_open = true;//打开菜单
var opened = false;//判断是否点击过
var ele_Menu = document.getElementById("hd-menu-btn");
var menu_list = document.getElementById("hd-menu-list");
ele_Menu.onclick = function () {
	if (menu_open) { //打开菜单
		if (opened) {
			return false;
		} else {
			ele_Menu.className += " hd-menu-open";
			opened = true;
			document.getElementsByTagName("progress")[0].style.display = "none";
			setTimeout(function () {
				menu_list.className += " hd-mlist-open";
				menu_open = false;
				opened = false;

			}, 300)
		}
	} else { //关闭菜单
		if (opened) {
			return false;
		} else {
			ele_Menu.className = "hd-menu-btn";
			menu_list.className += " hd-mlist-closed";

			opened = true;
			setTimeout(function () {
				menu_list.className = "hd-menu-list detail-menu-list";
				menu_open = true;
				opened = false;
				document.getElementsByTagName("progress")[0].style.display = "block";
			}, 800);
		}
	}
}


var hdBar = document.querySelector('.hd-bar');
var themeSwitch = document.querySelector('.theme-switch__checkbox'); // 获取复选框
var themeLink = document.getElementById('theme-link'); // 获取样式表链接
var bgElement = document.querySelector('.s-bg');
var footerElement = document.querySelector('.footer');
var firstNavItem = document.querySelector('.nav-item');
var contents = document.querySelectorAll('.content-h2');

// 设置主题
function setTheme(isDark) {
    if (isDark) {
        themeLink.href = '../css/Dark.css';

        bgElement.style.backgroundImage = 'url(../images/bg2.jpg)';
        bgElement.style.backgroundPosition = 'center top -135px';
        footerElement.style.backgroundImage = 'url(../images/bg2.jpg)';
        firstNavItem.style.backgroundColor = 'rgb(163, 97, 255)';
		contents.forEach((content) => {
			content.style.color = 'rgb(163, 97, 255)';
		});
        var logoLink = document.querySelector('a.hd-logo');
        if (logoLink) {
            var logoImage = logoLink.querySelector('img');
            if (logoImage) {
                logoImage.src = '../images/logo2.png';
            }
        }
    } else {
        themeLink.href = '/LargeSaltedFish_war_exploded/css/Style.css';
        bgElement.style.backgroundImage = 'url(../images/bg.jpg)';
        bgElement.style.backgroundPosition = 'center top -50px';
        footerElement.style.backgroundImage = 'url(../images/bg.jpg)';
        firstNavItem.style.backgroundColor = 'rgb(66, 129, 217)';
		contents.forEach((content) => {
			content.style.color = 'rgb(86, 160, 250)';
		});
        var logoLink = document.querySelector('a.hd-logo');
        if (logoLink) {
            var logoImage = logoLink.querySelector('img');
            if (logoImage) {
                logoImage.src = '../images/logo.png';
            }
        }
    }
}

// 处理滚动事件
function handleScroll() {
    var header = document.querySelector('.d-header');
    if (window.scrollY > 50) {
        if (themeSwitch.checked) {
            header.style.background = 'rgb(0, 0, 0)'; // 不透明黑色背景
            hdBar.style.boxShadow = '1px 1px 1px 1px rgba(255, 255, 255, 0.05)';
        } else {
            header.style.background = 'rgb(255, 255, 255)'; // 不透明白色背景
            hdBar.style.boxShadow = '1px 1px 1px 1px rgba(0, 0, 0, 0.05)';
        }
    } else {
        header.style.background = 'transparent'; // 透明背景
        hdBar.style.boxShadow = 'none';
    }
}

// 监听主题切换
themeSwitch.addEventListener('change', function () {
    var isDark = themeSwitch.checked;
    setTheme(isDark);
    localStorage.setItem('isDarkTheme', isDark); // 保存主题状态
    handleScroll(); // 立即应用滚动效果
});

// 恢复主题状态
window.addEventListener('load', function () {
    var isDark = localStorage.getItem('isDarkTheme') === 'true';
    themeSwitch.checked = isDark;
    setTheme(isDark);
    handleScroll(); // 立即应用滚动效果
});

// 添加滚动事件监听器
window.addEventListener('scroll', handleScroll);




let mybutton = document.getElementById("scrollToTopBtn");

// 在页面加载时先隐藏按钮
mybutton.style.display = "none"; 

mybutton.onclick = function() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
};

// 监听页面滚动事件
window.onscroll = function() {
    scrollFunction();
};

function scrollFunction() {
    // 当用户向下滑动 20px 以上时显示按钮
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "flex";
    } else {
        // 否则隐藏按钮
        mybutton.style.display = "none";
    }
}




document.addEventListener("DOMContentLoaded", function () {
	const menuBtn = document.getElementById('menuBtn');

		const menu = document.getElementById("menu");
		const menuText = document.querySelectorAll('.menuText');
		// 初始化菜单位置
		menu.style.left = "-40px";

		// 鼠标悬停事件
		menu.addEventListener("mouseover", function () {
			menu.style.left = "0px";
		});

		// 鼠标移出事件
		menu.addEventListener("mouseout", function () {
			if (menu.classList.contains('open')) {
					// menu.classList.toggle('open');
					// console.log(menu.classList.contains('open'));
					// console.log(menuText.classList.contains('open2'));
					// menuText.forEach(function (text, index) {
					// 	setTimeout(() => {
					// 		text.classList.toggle('open2');
					// 	}, index * 50);
					// }
					// );(
					// menuBtn.click();
					menu.style.left = "-170px";
			} else {
				// 部分隐藏菜单
				menu.style.left = "-40px";
			}
		});
	});

    const menuBtn = document.getElementById('menuBtn');
	const menu = document.querySelector('.menu');
	const menuText = document.querySelectorAll('.menuText');
	menuBtn.addEventListener('click', () => {
		menu.classList.toggle('open');
		menuText.forEach(function (text, index) {
			setTimeout(() => {
				text.classList.toggle('open2');
			}, index * 50);
		});
	});




    
// <script type="text/javascript">
// // 监听鼠标移入logo事件
// $(document).on('mouseenter', '.Jnmh-btnlogo', function () {
//     $('#nmh-navicon').addClass('Jnmh-open');
//     GtoggleNavlogo();
// });
// // 监听鼠标移除导航球移除事件（展开收缩悬浮球为什么不直接监听#nmh-navicon而多了一步监听logo是为了减少边缘触发）
// $(document).on('mouseleave', '#nmh-navicon', function () {
//     $('#nmh-navicon').removeClass('Jnmh-open');
//     GtoggleNavlogo();
// });
// var GtoggleNavlogo = function () {
//     var li = $('#nmh-navicon').find('.Jnmh-subli');
//     var lilen = li.length;
//     var avgDeg = 180 / (lilen - 1);// 平均角度
//     var initDeg = 0;// 起始方向角度
//     if ($('#nmh-navicon').hasClass('Jnmh-onleft')) {
//         // 如果悬浮球被拖拽到左边，则二级菜单则显示右侧
//         li.css({ transform: 'rotate(0deg)' });
//         initDeg = 180;
//     } else {
//         // 默认悬浮球在右边，二级菜单显示在左侧
//         li.css({ transform: 'rotate(-360deg)' });
//     }
//     for (var i = 0, j = lilen - 1; i < lilen; i++, j--) {
//         var d = initDeg - (i * avgDeg);
//         var z = initDeg ? j : i;
//         // console.log(d);
//         $('#nmh-navicon').hasClass('Jnmh-open') ? GrotateNavlogo(li[z], d) : GrotateNavlogo(li[z], 0);
//     }
// };
// var GrotateNavlogo = function (dom, deg) {
//     $({ a: 0 }).animate({ a: deg }, {
//         step: function (now, fx) {
//             $(dom).css({ transform: 'rotate(' + now + 'deg)' });
//             $(dom).children().css({ transform: 'rotate(' + (-now) + 'deg)' });
//         }, duration: 0
//     });
// }

// // 鼠标拖动logo移动
// $(document).on('mousedown', '.Jnmh-btnlogo', function (e_down) {
//     var wrap = $('#nmh-navicon');
//     wrap.removeClass('Jnmh-open');
//     $('.Jnmh-m-submenu').hide();
//     GtoggleNavlogo();

//     var positionDiv = wrap.offset();
//     var distenceX = e_down.pageX - positionDiv.left;
//     var distenceY = e_down.pageY - positionDiv.top + $(document).scrollTop();
//     $(document).mousemove(diy_move);
//     function diy_move(e_move) {
//         var x = e_move.pageX - distenceX;
//         var y = e_move.pageY - distenceY;

//         if (x < 0) {
//             x = 0;
//         } else if (x > $(document).width() - wrap.outerWidth(true)) {
//             x = $(document).width() - wrap.outerWidth(true);
//         }

//         if (y < 0) {
//             y = 0;
//         } else if (y > $(window).height() - wrap.outerHeight(true)) {
//             y = $(window).height() - wrap.outerHeight(true);
//         }

//         $(wrap).css({
//             'left': x + 'px',
//             'top': y + 'px'
//         });
//     }
//     $(document).mouseup(function () {
//         var x = $(wrap).offset().left;
//         var rm = '', ad = 'Jnmh-open';
//         if (x > $(document).width() / 2) {
//             x = $(document).width() - wrap.outerWidth(true) - 10;
//             rm = 'Jnmh-onleft';
//         } else {
//             x = 10;
//             ad += ' Jnmh-onleft';
//         }
//         $(wrap).css({ left: x + 'px' }).addClass(ad).removeClass(rm);
//         $('.Jnmh-m-submenu').show();
//         GtoggleNavlogo();
//         $(document).unbind('mousemove', diy_move);
//     });

// });


{/* <script>
// JavaScript to handle content switching
document.querySelectorAll('.nav-item').forEach(item => {
    item.addEventListener('click', () => {
        // Hide all content sections
        document.querySelectorAll('.content-section').forEach(section => {
            section.style.display = 'none';
        });
        // Show the selected content section
        document.getElementById(item.getAttribute('data-content')).style.display = 'block';

        // Remove 'active' class from all nav items
        document.querySelectorAll('.nav-item').forEach(navItem => {
            navItem.classList.remove('active');
        });
        // Add 'active' class to the clicked nav item
        item.classList.add('active');
    });
});

// Show the first content section by default
document.getElementById('content1').style.display = 'block';
</script>  */}
