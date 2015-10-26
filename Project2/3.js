// JavaScript Document

var myImage=document.getElementById("slideshow");

var imageArray=["image/1.jpg", "image/2.jpg", "image/3.jpg", "image/4.jpg", "image/5.jpg", "image/6.jpg", "image/7.jpg", "image/8.jpg", "image/9.jpg", "image/10.jpg", "image/11.jpg", "image/12.jpg", "image/13.jpg", "image/14.jpg", "image/15.jpg", "image/16.jpg", "image/17.jpg", "image/18.jpg", "image/19.jpg", "image/20.jpg", "image/21.jpg", "image/22.jpg", "image/23.jpg", "image/24.jpg", "image/25.jpg"];

var imageIndex=0;

function changeImage () {
	slideshow.setAttribute("src", imageArray [ imageIndex]);
	imageIndex++;
	if (imageIndex>=imageArray.kength) {
		imageIndex=0;
	}
}

var intervalHandle = setInterval(changeImage,2000);

slideshow.onclick=function() {
	clearInterval(intervalHandle);
}