﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Campaign1.aspx.cs" Inherits="traveldirectWebForms.campaigns.Campaign1" %>

<!DOCTYPE html>

<html dir="ltr" lang="en-GB">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="TravelDirect" />

	<!-- Stylesheets
	============================================= -->
	<link href="../http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="../../css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="../../style.css" type="text/css" />
	<link rel="stylesheet" href="../../css/dark.css" type="text/css" />

	<!-- Travel Demo Specific Stylesheet -->
	<link rel="stylesheet" href="../../demos/travel/travel.css" type="text/css" />
	<link rel="stylesheet" href="../../demos/travel/css/datepicker.css" type="text/css" />
    <link rel="stylesheet" href="../../css/td-mods.css" type="text/css" />
	<!-- / -->

	<link rel="stylesheet" href="../../css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="../../css/animate.css" type="text/css" />
	<link rel="stylesheet" href="../../css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="../../css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
    <link rel="stylesheet" href="../css/colors-dirty-green.css" type="text/css" />
	<!--<link rel="stylesheet" href="../css/colors.php?color=AC4147" type="text/css" />-->

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/plugins.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="../js/jquery.gmap.js"></script>

	

	<!-- Document Title
	============================================= -->
	<title>Check out Travel Direct</title>

</head>

<body class="stretched">
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5RX9X7"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5RX9X7');</script>
<!-- End Google Tag Manager -->

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Top Bar
		============================================= -->
		<div id="top-bar" class="transparent-topbar dark">

			<div class="container clearfix">

				<div class="col_half nobottommargin clearfix">

					<!-- Top Links
					============================================= -->
					<div class="top-links">
						<ul>
							<li><a href="../index.html">Home</a></li>
							<li><a href="../about-travel-direct.html">About Us</a></li>
							<li><a href="../contact-travel-direct.html">Contact</a></li>
							<li><a href="../holiday-destinations.html">Destinations</a>
								<ul>
									<li><a href="../visit-jamaica.html">Jamaica</a></li>
									<li><a href="../visit-barbados.html">Barbados</a></li>
									<li><a href="../visit-mexico.html">Mexico</a></li>
                                    <li><a href="../visit-saint-lucia.html">Saint Lucia</a></li>
								</ul>
							</li>
						</ul>
					</div><!-- .top-links end -->

				</div>

				<div class="col_half fright col_last clearfix nobottommargin">

					<!-- Top Social
					============================================= -->
					<div id="top-social">
						<ul>
							
							<li><a href="../tel:0207 148 5592" class="si-call"><span class="ts-icon"><i class="icon-call"></i></span><span class="ts-text">0207 148 5592</span></a></li>
							<li><a href="../contact-travel-direct.html" class="si-email3"><span class="ts-icon"><i class="icon-envelope-alt"></i></span><span class="ts-text">Contact Us</span></a></li>
						</ul>
					</div><!-- #top-social end -->

				</div>

			</div>

		</div><!-- #top-bar end -->

		<!-- Header
		============================================= -->
		<header id="header" class="transparent-header" data-sticky-class="not-dark" data-responsive-class="not-dark">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="../index.html" class="standard-logo" data-dark-logo="../images/travel-direct/travel-direct-logo-dark.png"><img src="../images/travel-direct/travel-direct-logo.png" alt="Travel Direct Logo"></a>
						<a href="../index.html" class="retina-logo" data-dark-logo="../images/travel-direct/travel-direct-logo-dark-2x.png"><img src="../images/travel-direct/travel-direct-logo-2x.png" alt="Travel Direct Logo"></a>
					</div><!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu" class="style-4">

						<ul>
							<li class="current"><a href="../index.html"><div><i class="icon-home2"></i>Home</div></a>	</li>
							<li><a href="../holiday-destinations.html"><div><i class="icon-building"></i>Where to go</div></a></li>
                            <li><a href="../travel-direct-hotel-choice.html"><div><i class="icon-building"></i>Hotels</div></a></li>
							<li><a href="../travel-direct-holidays.html"><div><i class="icon-gift"></i>Holidays</div></a></li>
                            
							<li><a href="../tel:0207 148 5592"><div><i class="icon-phone3"></i>0207 148 5592</div></a></li>
						</ul>

					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<section class="slider-parallax" id="slider" style="background: url('../images/landing/thank-you-banner.jpg'); background-size: cover;" data-height-lg="670" data-height-md="500" data-height-sm="400" data-height-xs="250" data-height-xxs="200" name="slider">
                    <div class="container clearfix">
                            <div class="slider-caption slider-caption-center">
                                <h2>Thanks for taking part in our survey</h2>
                                <p class="testimoniale" data-caption-animate="fadeInUp" data-caption-delay="200">We appreciate you sharing your travel dreams with us.</p>
                            </div>
                        </div>
        </section>
        
                
		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">
                
                <div class="container clearfix topmargin">
                 	<div id="portfolio" class="portfolio-1 clearfix">
                        <article class="portfolio-item clearfix">
                                <div class="portfolio-image">
                                        <img src="../images/landing/Team-2.jpg" alt="The Travel Direct Team">
                                </div>
                                <div class="portfolio-desc">
                                    <h3>From Cuba Direct to Travel Direct: Bigger dreams, the same fantastic team.</h3>
                                        <p>As Cuba specialists (and natives), we've been paying close attention to recent developments on the island. Cuba is opening its doors wider than ever before and making new connections with the world. Cuba Direct is too.</p>
                                        <p>We're incredibly excited to announce the launch of our brand new sister brand, Travel Direct, which will offer holidays to a host of vibrant, beautiful and exotic destinations outside of Cuba.</p>
                                </div>
                        </article>
                    </div>
        </div>

                
        <!-- 3-grid-system -->
            <section>
            <div class="container clearfix  bottommargin topmargin">
                <div id="portfolio" class="portfolio-3 clearfix">
                    <div class="heading-block topmargin bottommargin nobottomborder center">
						<h2>Take a peek at what we have to offer</h2>
                        <span class="subtitle">A small selection of our dream holiday packages, crafted by travel specialists.
                    </span>
					</div>
                    
                    	<article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-image">
                                    <img src="../images/travel-direct/hotels/barbados/palms-resort-barbados/palms-resort-barbados-800x600.jpg" alt="Palms Resort Barbados">
                                <div class="portfolio-overlay">
                                    <a href="../all-inclusive-barbados-holidays-palms-resort-barbados.html" class="center-icon"><i class="icon-line-ellipsis"></i></a>
                                </div>
                            </div>
                            <div class="portfolio-desc">
                                <a href="../all-inclusive-barbados-holidays-palms-resort-barbados.html"><h3>Palms Resort, Barbados</h3></a>
                                	<span>The Palms Resort makes Barbados’ chic west coast accessible, offering high-quality accommodation at reasonable rates.
                                </span>
                                <a href="../all-inclusive-barbados-holidays-palms-resort-barbados.html" class="button button-3d noleftmargin">See More</a>
                            </div>
                        </article>
                        
                        <article class="portfolio-item pf-graphics pf-uielements">
                            <div class="portfolio-image">
                                    <img src="../images/travel-direct/hotels/saint-lucia/calabash-cove/calabash-cove-800x600.jpg" alt="Travel Direct Specialists">
                                <div class="portfolio-overlay">
                                    <a href="../all-inclusive-saint-lucia-holidays-calabash-cove.html" class="center-icon"><i class="icon-line-ellipsis"></i></a>
                                </div>
                            </div>
                            <div class="portfolio-desc">
                                <a href="../all-inclusive-saint-lucia-holidays-calabash-cove.html"><h3>Calabash Cove, Saint Lucia</h3></a>
                                <span>
                                This boutique resort offers a luxury all-inclusive experience in a gorgeous beachfront setting designed to sit in harmony with the bay's natural environment.
                                </span>
                                <a href="../all-inclusive-saint-lucia-holidays-calabash-cove.html" class="button button-3d noleftmargin">See More</a>
                            </div>
                        </article>
                        
                        <article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-image">
                                    <img src="../images/travel-direct/hotels/mexico/hyatt-zilara/hyatt-zilara-800x600.jpg" alt="Travel Direct Specialists">
                                <div class="portfolio-overlay">
                                    <a href="../all-inclusive-mexico-holidays-hyatt-zilara.html" class="center-icon"><i class="icon-line-ellipsis"></i></a>
                                </div>
                            </div>
                            <div class="portfolio-desc">
                                <a href="../all-inclusive-mexico-holidays-hyatt-zilara.html"><h3>Hyatt Zilara, Mexico</h3></a>
                                <span>
                                	Adults-only and all-inclusive, Hyatt Zilara Cancun is a place to leave your worries behind and embrace the calm of the Caribbean.
                                </span>
                                <a href="../all-inclusive-mexico-holidays-hyatt-zilara.html" class="button button-3d noleftmargin">See More</a>
                            </div>
                        </article>
                        
                        <div class="divider divider-center"><i class="icon-cloud"></i></div>
                    </div>
				</div>
            </section>
            <!-- End of 3-grid-system -->
                
            
            	<div class="container clearfix">	
                	<div class="heading-block bottommargin nobottomborder center">
						<span class="before-heading color">Every Holiday a Lifetime Experience</span>
						<h2>We are Travel Direct</h2>
                        <span class="subtitle">And the key to our success lies in four qualities: simplicity, experience, expertise, and flexibility.
                        </span>
					</div>
                
                </div>
                <div class="container clearfix">

                    <div class="col_one_third">
                        <div class="feature-box fbox-center fbox-effect nobottomborder">
                            <div class="fbox-icon">
                                <i class="icon-thumbs-up i-alt"></i>
                            </div>
                            <h3>Trusted Travel Experts</h3>
                            <span id="submoded">96% of our clients would recommend us to friends and family. We are an IATA and ATOL bonded tour operator.
                            </span>
                        </div>
                    </div>

                    <div class="col_one_third">
                        <div class="feature-box fbox-center fbox-effect nobottomborder">
                            <div class="fbox-icon">
                                <i class="icon-heart2 i-alt"></i>
                            </div>
                            <h3>Experience & Expertise</h3>
                            <span id="submoded">We have over 15 years of experience as a creative travel consultant. Our expertise comes from direct destination knowledge.
                            </span>
                        </div>
                    </div>

                    <div class="col_one_third col_last">
                        <div class="feature-box fbox-center fbox-effect nobottomborder">
                            <div class="fbox-icon">
                                <i class="icon-line2-diamond i-alt"></i>
                            </div>
                            <h3>World Class Service</h3>
                            <span id="submoded">Travel Direct is all about quality service, flexibility and customisation. 
                            Our service is based on the premise that no two holidays are ever the same.
                            </span>
                        </div>
                    </div>

                    <div class="clear"></div>

                </div>
                
                <div class="section parallax nomargin notopborder" style="padding: 100px 0px; background: url('../images/travel-direct/team/about-travel-direct-parallaxbg_2650x1333-2.jpg') 50% ;" data-stellar-background-ratio="0.3">
					<div class="container-fluid center clearfix">

						<div class="heading-block">
							<h2>You are safe in our hands</h2>
							<span>Our Specialists would recommend our holidays to family and friends</span>
							<div class="clear"></div>
						</div>

						
						<div class="container clearfix">
                            <div class="col-md-4 nobottommargin bounceIn animated" data-animate="bounceIn" data-delay="400">
                                <div class="counter counter-large counter-lined"><img src="../images/travel-direct/team/atol-600x450.png" alt="ATOL Licensed" /></div>
                                <h5>ATOL Bonded, your Holiday is protected with licence 6346</h5>
                            </div>
    
                            <div class="col-md-4 nobottommargin bounceIn animated" data-animate="bounceIn" data-delay="600">
                                <div class="counter counter-large counter-lined"><img src="../images/travel-direct/team/iata-600x450.png" alt="IATA Accredited" /></div>
                                <h5>Accredited by the Air Transport Association</h5>
                            </div>
    
                            <div class="col-md-4 nobottommargin col_last bounceIn animated" data-animate="bounceIn" data-delay="800">
                                <div class="counter counter-large counter-lined"><img src="../images/travel-direct/team/feefo-600x450.png" alt="Independent Reviews" /></div>
                                <h5>Positive Reviews from Independent Customer Feedback Services</h5>
                            </div>
                        </div>

					</div>
				</div>
               
		
				<div class="container clearfix">	
               	  <div class="heading-block topmargin bottommargin nobottomborder center">
						<span class="before-heading color">Nothing we do comes off the shelf</span>
						<h2>Incredible Experiences, and we always deliver</h2>
                        <span class="subtitle">Our approach to creating lifetime adventures.
                    </span>
					</div>
                
                </div>

			  <div class="section notopmargin footer-stick">
					<div class="container center clearfix">

						<div class="heading-block bottommargin-sm nobottomborder">
							<span class="before-heading color">Create a Custom Plan based on your Taste</span>
							<h2>Start making your Travel Plans</h2>
						</div>

						<p class="lead">Sometimes a beach holiday or a package deal just won’t cut it. That’s why we at Travel Direct are all about flexibility and customisation. If you would like us to create a tailor-made itinerary built from scratch around your time, interests, and budget, please get in touch with one of our travel specialists and we will send you a free itinerary and quotation in a jiffy.  </p>

						<a href="../contact-travel-direct.html" class="button button-rounded button-reveal tright button-xlarge topmargin-sm"><i class="icon-angle-right"></i><span>Create a Package</span></a>

					</div>
				</div>

			</div>

		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="dark">

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						<img src="../images/travel-direct/travel-direct-logo-dark.png" alt="Travel Direct Logo" class="footer-logo">

						Copyrights &copy; 2016 All Rights Reserved by Travel Direct Ltd.
					</div>

					<div class="col_half col_last tright">
						<div class="copyrights-menu copyright-links fright clearfix">
							<a href="../index.html">Home</a>/<a href="../about-travel-direct.html">About</a>/<a href="../holiday-destinations.html">Destinations</a>/<a href="../travel-direct-hotel-choice.html">Hotels</a>/<a href="../travel-direct-holidays.html">Holidays</a>/<a href="../contact-travel-direct.html">Contact</a>
                            
                            <p style="margin-top: 20    px;"><span style="color: #fff; font-size: 15px;">Specialist holiday experts | Authentic travel experiences.</span><br>
                            <strong>HQ:</strong>&nbsp;&nbsp;Foresters Hall, 25-27 Westow Street, Upper Norwoord, London SE19 3RY<br>
                            <strong>Phone:</strong>&nbsp;&nbsp;0207 148 5592</p>
						</div>
						
					</div>
                        
				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="../js/functions.js"></script>

</body>
</html>
