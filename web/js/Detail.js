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

// document.addEventListener('DOMContentLoaded', function () {
// 	const slider = document.querySelector('.slider');
// 	const links = document.querySelectorAll('.hd-menu-list a');
//
// 	links.forEach((link) => {
// 		link.addEventListener('mouseenter', () => {
// 			const linkRect = link.getBoundingClientRect();
// 			slider.style.left = `${linkRect.left}px`;
// 			slider.style.width = `${linkRect.width}px`;
// 		});
//
// 		link.addEventListener('mouseleave', () => {
// 			slider.style.width = '0';
// 		});
// 	});
//
//
// });

var hdBar = document.querySelector('.hd-bar');
var themeSwitch = document.querySelector('.theme-switch__checkbox'); // 获取复选框
var themeLink = document.getElementById('theme-link'); // 获取样式表链接
var footerElement = document.querySelector('.footer');
var firstNavItem = document.querySelector('.body');
var ads = document.querySelectorAll('.ads');

// 设置主题
function setTheme(isDark) {
    if (isDark) {
        themeLink.href = '/LargeSaltedFish_war_exploded/css/Dark.css';

        footerElement.style.backgroundImage = 'url(/LargeSaltedFish_war_exploded/images/bg2.jpg)';
        firstNavItem.style.backgroundColor = 'black';
        ads.forEach(function(ad) {
            ad.style.backgroundColor = '#595555';
            ad.style.color = 'white';
        });


        var logoLink = document.querySelector('a.hd-logo');
        if (logoLink) {
            var logoImage = logoLink.querySelector('img');
            if (logoImage) {
                logoImage.src = '/LargeSaltedFish_war_exploded/images/logo2.png';
            }
        }
    } else {
        themeLink.href = '/LargeSaltedFish_war_exploded/css/Style.css';
        footerElement.style.backgroundImage = 'url(/LargeSaltedFish_war_exploded/images/bg.jpg)';
        firstNavItem.style.backgroundColor = 'white';
        ads.forEach(function(ad) {
            ad.style.backgroundColor = '#f1f7ff';
            ad.style.color = 'black';

        });

        var logoLink = document.querySelector('a.hd-logo');
        if (logoLink) {
            var logoImage = logoLink.querySelector('img');
            if (logoImage) {
                logoImage.src = '/LargeSaltedFish_war_exploded/images/logo.png';
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

