
document.addEventListener('DOMContentLoaded', function () {
    bindSliderEvents();
});
function bindSliderEvents() {
    const slider = document.querySelector('.slider');

    const links = document.querySelectorAll('.hd-menu-list a');

    links.forEach((link) => {
        link.addEventListener('mouseenter', () => {
            const linkRect = link.getBoundingClientRect();
            slider.style.left = `${linkRect.left}px`;
            slider.style.width = `${linkRect.width}px`;
        });

        link.addEventListener('mouseleave', () => {
            slider.style.width = '0';
        });
    });
}



document.addEventListener('DOMContentLoaded', () => {
//加载二维码
    const menuItem = document.querySelector('.erweima');
    const popupImage = document.querySelector('.popupImage');
    popupImage.style.display = 'none';

    menuItem.addEventListener('mouseover', () => {
        popupImage.style.display = 'block';
    });

    menuItem.addEventListener('mouseout', () => {
        popupImage.style.display = 'none';
    });


    //动态读取类别
    fetchCategories();

});

function fetchCategories() {
    fetch('/LargeSaltedFish_war_exploded/CategoryServlet')
        .then(response => response.json())
        .then(data => {
            console.log(data);
            renderCategories(data);
        })
        .catch(error => console.error('Error fetching categories:', error));
}

function renderCategories(categories) {
    const menuList = document.getElementById('hd-menu-list');
    categories.forEach(category => {
        const listItem = document.createElement('li');
        const link = document.createElement('a');
        link.href = `/LargeSaltedFish_war_exploded/list/List.jsp`;
        link.textContent = category.categoryName;
        listItem.appendChild(link);
        menuList.appendChild(listItem);
    });
    bindSliderEvents();

}