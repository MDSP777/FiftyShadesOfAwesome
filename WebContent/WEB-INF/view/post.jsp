<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${post.title }</title>

    <script src="<c:url value="/resources/jquery-1.11.3.min.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.css" />">
    <script src="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.js" />"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/prosdev.css" />">
    
    <script type="text/javascript">

        $(document).ready(function () {
            $(".hidden").css("display", "none");
            $("#compose").click(function () {
                $("#mod").modal('show');
            });

            $("#comment").focus(function (){
                $(".hidden").css("display", "block");
                $("#comment").attr('rows', '3');
            });

            $("#viewcomm").click(function (){
                $(".hiddencomm").css("display", "block");
                $("#viewcomm").css("display", "none");
            });
        });
    </script>
</head>
<body>

<div class="ui large top fixed secondary pointing menu" style="background-color: white">

    <div class="ui container">
        <div class="left menu">
            <a class="blue item" href="index.html">Home</a>
            <a class="blue item" href="about.html">About Us</a>
        </div>
        <div class="item">
            <img src="<c:url value="resources/logo.png"/>">
        </div>
        <div class="right menu">
            <div class="item">
                <button class="ui blue button" id="compose">
                    <i class="write icon"></i>
                    Compose
                </button>
            </div>
        </div>
    </div>
</div>

<div class="ui hidden divider"></div>
<div class="ui container">
    <div class="column">
        <div class="postcontent">
            <h1 class="ui header">
                <div class="sub header">${post.datePosted }</div>
            </h1>
            <h1 class="ui header">${post.title }
                <div class="sub header">${post.author }</div>
            </h1>
            
            ${post.fullContent }

        </div>

        <h4 class="ui horizontal divider">
            Comments
        </h4>

        <div class="ui form content">
            <div class="field hidden">
                <input placeholder="@username" type="text">
            </div>
            <div class="field">
                <textarea id="comment" rows="1" style="font-size: medium" placeholder="Comment.."></textarea>
            </div>

            <div class="hidden">
                <button class="ui right floated  blue labeled icon button " type="submit">Submit<i class="checkmark icon"></i>
                </button>
                <br>
                <br>
            </div>

        </div>

<!--         <div class="ui comments"> -->
<!--             <div class="comment"> -->
<!--                 <div class="content"> -->
<!--                     <a class="author">@sharkscion</a> -->
<!--                     <div class="metadata"> -->
<!--                         <span class="date">Today at 5:42PM</span> -->
<!--                     </div> -->
<!--                     <div class="text"> -->
<!--                         How artistic! -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="comment"> -->
<!--                 <div class="content"> -->
<!--                     <a class="author">@UyDMN</a> -->
<!--                     <div class="metadata"> -->
<!--                         <span class="date">Yesterday at 12:30AM</span> -->
<!--                     </div> -->
<!--                     <div class="text"> -->
<!--                         TROLOLOLOLOL :)) -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--             <div class="comment hiddencomm"> -->
<!--                 <div class="content"> -->
<!--                     <a class="author">@UyDMN</a> -->
<!--                     <div class="metadata"> -->
<!--                         <span class="date">Yesterday at 12:30AM</span> -->
<!--                     </div> -->
<!--                     <div class="text"> -->
<!--                         TROLOLOLOLOL :)) -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--             <div class="comment hiddencomm"> -->
<!--                 <div class="content"> -->
<!--                     <a class="author">@UyDMN</a> -->
<!--                     <div class="metadata"> -->
<!--                         <span class="date">Yesterday at 12:30AM</span> -->
<!--                     </div> -->
<!--                     <div class="text"> -->
<!--                         TROLOLOLOLOL :)) -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <br> -->
<!--             <a class="blue" id="viewcomm" href="#">View more comments..</a> -->
<!--         </div> -->

    </div>


    <!--<div style="min-height: 263px;" class="right ui rail">-->
    <!--<div style="width: 272px ! important; height: 263px ! important; left: 1356.5px;" class="ui sticky">-->
    <!--<h3 class="ui header">Stuck Content</h3>-->
    <!--<img>-->
    <!--</div>-->
    <!--</div>-->


    <br>
    <br>

</div>

<div class="ui hidden divider"></div>


<div class="ui modal" id="mod">
    <i class="close icon"></i>
    <div class="header">
        Compose
    </div>
    <div class="ui form content">
        <div class="field">
            <input placeholder="@username" type="text">
        </div>
        <div class="field">
            <input style="font-size: large" placeholder="Title" type="text">
        </div>
        <div class="field">
            <textarea style="font-size: medium" placeholder="Your text here.."></textarea>
        </div>
        <button class="ui right floated blue labeled icon button" type="submit">Submit<i class="checkmark icon"></i>
        </button>



        <br><br>
    </div>

</div>

</body>
</html>