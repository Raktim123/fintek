<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FINTEKIN | Index</title>

    <link href="{{ asset('assets/frontend/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/frontend/css/custom-style.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/frontend/css/owl.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/frontend/css/responsive.css') }} " rel="stylesheet" />
    <link rel="icon" href="{{ asset('assets/frontend/images/favicon.png') }}" sizes="32x32" />
</head>

<body>
    <div class="top__header top__header__container d-flex">
        <div class="logo__wrapp">
            <a href="index.php">
                <img src="{{asset('assets/frontend/images/logo.png')}}" alt="" />
            </a>
        </div>
        <div class="top__header__rightwrapp ms-auto">
            <div class="search__wrapp">
                <input type="text" value="" placeholder="Search courses Here" />
                <input type="submit" name="" id="" />
            </div>
            <div class="holder__phone">
                <div class="account__wwrapp">
                    <div class="dropdown">
                        <button class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <img src="{{asset('assets/frontend/images/account.png')}}" />
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li>
                                <a class="dropdown-item" href="login.php">Login</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="register.php">Register</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="wishlist.php">wishlist</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="myprofile.php">My Profile</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="cart__wrapp">
                    <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <img src="{{asset('assets/frontend/images/cart.png')}}" alt="" />
                        <span>0</span>
                    </a>
                    <ul class="dropdown-menu p-3" aria-labelledby="dropdownMenuButton1">
                        <li>
                            <div class="all__images d-flex">
                                <div class="ima__to">
                                    <img src="{{asset('assets/frontend/images/12.png')}}" alt="" />
                                </div>
                                <div class="text__all__popup">
                                    <h4>It is a long established fact that a reader will.. </h4>
                                    <p>Caroline McDevitt</p>
                                    <h5>₹449 <span>₹599</span></h5>
                                </div>
                            </div>
                            <div class="drop__price">
                                <h2>Total:₹449</h2>
                            </div>
                        </li>

                    </ul>

                </div>
                <div class="cart__wrapp">
                    <a href="cart.php">
                        <img src="{{asset('assets/frontend/images/phone.png')}} alt="">
                    </a>
                </div>


                <div class="account__wwrapp langu">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            ENG
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="#">eng</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Another action</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg static-top">
        <!-- <a href="#" class="gear">
            <i class="fa-solid fa-gear"></i>
        </a> -->
        <div class="container main__header__content">
            <button class="navbar-toggler navbar-toggler-right hamburger-menu order-2" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="bar"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Platform</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Individuals</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href=" productlist.php">Startups/Businesses</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Services</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Government </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Resources</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="productlist.php">Teach on FintekIn</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transactions</a></li>
                            <li><a href="#">General Corporate</a></li>
                            <li><a href="#">Public & Project</a></li>
                            <li><a href="#">Real Estate</a></li>
                            <li><a href="#">Securities</a></li>
                            <li><a href="#">Initiatives</a></li>

                        </ul>
                    </li>
                </ul>
            </div>
            <div class="contact__info">
                <div class="phone__wrapp">
                    <a href="contact.php" class="justify-content-between">
                        <div class="num__wrapp">
                            <span>Join Now</span>
                        </div>
                        <div class="icon__box">
                            <img src="{{asset('assets/frontend/images/send.png')}}" alt="" />
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </nav>