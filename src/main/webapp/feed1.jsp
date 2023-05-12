@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: linear-gradient(#FED151, #DE981F);
}
.wrapper{
  background: #f6f6f6;
  max-width: 360px;
  width: 100%;
  border-radius: 10px;
  box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
}
.wrapper .content{
  padding: 30px;
  display: flex;
  align-items: center;
  flex-direction: column;
}
.wrapper .outer{
  height: 135px;
  width: 135px;
  overflow: hidden;
}
.outer .emojis{
  height: 500%;
  display: flex;
  flex-direction: column;
}
.outer .emojis li{
  height: 20%;
  width: 100%;
  list-style: none;
  transition: all 0.3s ease;
}
.outer li img{
  height: 100%;
  width: 100%;
}
#star-2:checked ~ .content .emojis .slideImg{
  margin-top: -135px;
}
#star-3:checked ~ .content .emojis .slideImg{
  margin-top: -270px;
}
#star-4:checked ~ .content .emojis .slideImg{
  margin-top: -405px;
}
#star-5:checked ~ .content .emojis .slideImg{
  margin-top: -540px;
}
.wrapper .stars{
  margin-top: 30px;
}
.stars label{
  font-size: 30px;
  margin: 0 3px;
  color: #ccc;
}
#star-1:hover ~ .content .stars .star-1,
#star-1:checked ~ .content .stars .star-1,

#star-2:hover ~ .content .stars .star-1,
#star-2:hover ~ .content .stars .star-2,
#star-2:checked ~ .content .stars .star-1,
#star-2:checked ~ .content .stars .star-2,

#star-3:hover ~ .content .stars .star-1,
#star-3:hover ~ .content .stars .star-2,
#star-3:hover ~ .content .stars .star-3,
#star-3:checked ~ .content .stars .star-1,
#star-3:checked ~ .content .stars .star-2,
#star-3:checked ~ .content .stars .star-3,

#star-4:hover ~ .content .stars .star-1,
#star-4:hover ~ .content .stars .star-2,
#star-4:hover ~ .content .stars .star-3,
#star-4:hover ~ .content .stars .star-4,
#star-4:checked ~ .content .stars .star-1,
#star-4:checked ~ .content .stars .star-2,
#star-4:checked ~ .content .stars .star-3,
#star-4:checked ~ .content .stars .star-4,

#star-5:hover ~ .content .stars .star-1,
#star-5:hover ~ .content .stars .star-2,
#star-5:hover ~ .content .stars .star-3,
#star-5:hover ~ .content .stars .star-4,
#star-5:hover ~ .content .stars .star-5,
#star-5:checked ~ .content .stars .star-1,
#star-5:checked ~ .content .stars .star-2,
#star-5:checked ~ .content .stars .star-3,
#star-5:checked ~ .content .stars .star-4,
#star-5:checked ~ .content .stars .star-5{
  color: #fd4;
}
.wrapper .footer{
  border-top: 1px solid #ccc;
  background: #f2f2f2;
  width: 100%;
  height: 55px;
  padding: 0 20px;
  border-radius: 0 0 10px 10px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.footer span{
  font-size: 17px;
  font-weight: 400;
}
.footer .text::before{
  content: "Rate your experience";
}
.footer .numb::before{
  content: "0 out of 5";
}
#star-1:checked ~ .footer .text::before{
  content: "I just hate it";
}
#star-1:checked ~ .footer .numb::before{
  content: "1 out of 5";
}
#star-2:checked ~ .footer .text::before{
  content: "I don't like it";
}
#star-2:checked ~ .footer .numb::before{
  content: "2 out of 5";
}
#star-3:checked ~ .footer .text::before{
  content: "This is awesome";
}
#star-3:checked ~ .footer .numb::before{
  content: "3 out of 5";
}
#star-4:checked ~ .footer .text::before{
  content: "I just like it";
}
#star-4:checked ~ .footer .numb::before{
  content: "4 out of 5";
}
#star-5:checked ~ .footer .text::before{
  content: "I just love it";
}
#star-5:checked ~ .footer .numb::before{
  content: "5 out of 5";
}
input[type="radio"]{
  display: none;
}