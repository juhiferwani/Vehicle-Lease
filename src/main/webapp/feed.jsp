<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emoji Stars Rating | CodingNepal</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<style>
#con{
padding-top:30px;
position:fixed;}
</style>
<body>
  <div class="wrapper" id="con">
    <input type="radio" name="rate" id="star-1">
    <input type="radio" name="rate" id="star-2">
    <input type="radio" name="rate" id="star-3">
    <input type="radio" name="rate" id="star-4">
    <input type="radio" name="rate" id="star-5">
    <div class="content">
      <div class="outer">
        <div class="emojis">
          <li class="slideImg"><img src="emoji-1.png" alt=""></li>
          <li><img src="emoji-2.png" alt=""></li>
          <li><img src="emoji-3.png" alt=""></li>
          <li><img src="emoji-4.png" alt=""></li>
          li><img src="emoji-5.png" alt=""></li>
        </div>
      </div>
      <div class="stars">
        <label for="star-1" class="star-1 fas fa-star"></label>
        <label for="star-2" class="star-2 fas fa-star"></label>
        <label for="star-3" class="star-3 fas fa-star"></label>
        <label for="star-4" class="star-4 fas fa-star"></label>
        <label for="star-5" class="star-5 fas fa-star"></label>
      </div>
    </div>
    <div class="footer">
      <span class="text"></span>
      <span class="numb"></span>
    </div>
  </div>

</body>
</html>