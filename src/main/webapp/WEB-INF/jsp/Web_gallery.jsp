<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/20 0020
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gallery</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="/static/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/main.css" rel="stylesheet"/>
    <!-- js -->
    <script type="text/javascript" src="/static/web/js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <link href='https://fonts.googleapis.com/css?family=Quicksand:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/static/web/js/move-top.js"></script>
    <script type="text/javascript" src="/static/web/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->

</head>

<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-top-left">
                <ul>
                    <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 345 569</li>
                    <li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
                </ul>
            </div>
            <div class="header-top-left1">
                <ul class="social-icons">
                    <li><a href="#" class="icon icon-border facebook"></a></li>
                    <li><a href="#" class="icon icon-border twitter"></a></li>
                    <li><a href="#" class="icon icon-border instagram"></a></li>
                    <li><a href="#" class="icon icon-border pinterest"></a></li>
                </ul>
            </div>
            <div class="header-top-right">
                <div class="search">
                    <input class="search_box" type="checkbox" id="search_box">
                    <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                    <div class="search_form">
                        <form action="#" method="post">
                            <input type="text" name="Search" placeholder="Search...">
                            <input type="submit" value=" ">
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <h1><a class="navbar-brand" href="index.html">Plottage <span>Real Estate</span></a></h1>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav>
                        <ul class="nav navbar-nav">
                            <li><a href="index.html" class="hvr-bounce-to-bottom">Home</a></li>
                            <li><a href="services.html" class="hvr-bounce-to-bottom">Services</a></li>
                            <li class="active"><a href="gallery.html">Gallery</a></li>
                            <li><a href="short-codes.html" class="hvr-bounce-to-bottom">Short Codes</a></li>
                            <li><a href="mail.html" class="hvr-bounce-to-bottom">Mail Us</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="index.html">Home</a> <i>/</i></li>
                <li>Photo Gallery</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>Photo Gallery</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <h3><span>Gallery</span></h3>
        <p class="autem">maiores alias consequatur aut perferendis doloribus asperiores repellat</p>
        <div class="gallery-grids carouselGallery-grid hidden-xs">
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="0" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/7.jpg" data-posturl="#"
                     style="background-image:url(images/7.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>4535
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="1" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/9.jpg" data-posturl="#"
                     style="background-image:url(images/9.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>3144
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="2" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/8.jpg" data-posturl="#"
                     style="background-image:url(images/8.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>5345
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="3" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/6.jpg" data-posturl="#"
                     style="background-image:url(images/6.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>1233
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="4" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/10.jpg" data-posturl="#"
                     style="background-image:url(images/10.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>9896
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="5" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/12.jpg" data-posturl="#"
                     style="background-image:url(images/12.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>2432
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="6" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/8.jpg" data-posturl="#"
                     style="background-image:url(images/8.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>5467
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="7" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/7.jpg" data-posturl="#"
                     style="background-image:url(images/7.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>5345
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="8" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="images/6.jpg" data-posturl="#"
                     style="background-image:url(images/6.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-snailUser">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>2544
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
            <script src="js/main.js"></script>
        </div>
    </div>
</div>
<!-- //gallery -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <h2>Sign up for our newsletter</h2>
        <p class="para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vitae eros eget tellus
            tristique bibendum. Donec rutrum sed sem quis venenatis.</p>
        <div class="footer-contact">
            <form action="#" method="post">
                <input type="text" name="Email" placeholder="Enter your email to update" required=" ">
                <input type="submit" value="Subscribe">
            </form>
        </div>
        <div class="footer-grids">
            <div class="col-md-4 footer-grid">
                <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> General Pvt 66, Dong Da
                    Hanoi, Vietnam.</p>
                <p><a href="mailto:contact@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> contact@example.com</a></p>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 456 686</p>
            </div>
            <div class="col-md-2 footer-grid">
                <ul>
                    <li><a href="mail.html">Contact</a></li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="short-codes.html">Short Codes</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">eveniet ut molesti</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">earum rerum tenet</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">maiores alias cons</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="col-md-3 footer-grid">
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="footer-copy">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- for bootstrap working -->
<script src="/static/web/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>
