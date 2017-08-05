/**
 * Created by Donner on 18.05.2017.
 */


window.onload = function () {
    //ищем элемент по селектору
    var catItems = document.getElementsByClassName('item');
    catItems = Array.prototype.slice.call(catItems);

    var img = document.createElement('img');
    img.className = "hover";
    img.src = "img/hover.png";
    img.alt = '#';


    catItems.forEach(function (elem) {

            elem.onmouseleave = function (e) {

                elem.getElementsByClassName('itemImageBlock')[0].removeChild(img);
                elem.getElementsByClassName('itemTextBlock')[0].style.boxShadow = '';
            };

            elem.onmouseenter = function (e) {

                elem.getElementsByClassName('itemImageBlock')[0].appendChild(img);
                elem.getElementsByClassName('itemTextBlock')[0].style.boxShadow = '0px 5px 8px 0px rgba(0, 0, 0, 0.16)';
            }

        }
    )


}