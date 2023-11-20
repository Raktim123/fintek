<footer>
     <div class="address__wrapper">
         <div class="container">
             <div class="row">
                 <div class="col-sm-12 col-md-5 col-lg-5 col-xl-5">
                     <div class="map__holderone">
                         <div class="location__holder">
                             <i class="fa-solid fa-location-dot"></i>
                         </div>
                         <div class="address__wrap">
                             <p>Lorem ipsum dolor sit amet - 403517, India</p>
                         </div>
                     </div>
                 </div>

                 <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                     <div class="map__holderone">
                         <div class="location__holder">
                             <i class="fa-solid fa-location-dot"></i>
                         </div>
                         <div class="address__wrap">
                             <a href="#">ipsumdolor@intekin.com</a>
                         </div>
                     </div>
                 </div>

                 <div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
                     <div class="map__holderone">
                         <div class="location__holder">
                             <i class="fa-solid fa-location-dot"></i>
                         </div>
                         <div class="address__wrap">
                             <a href="#">1234 6547 9874</a>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="mid__holder">
         <div class="container">
             <div class="row">
                 <div class="col-sm-4 offset-1">
                     <div class="footer__box">
                         <a href="#"><img src="{{asset('assets/frontend/images/footer_logo.png')}}" alt="" /></a>
                         <div class="subcri__wrapper">
                             <p>Sign Up Our Newsleatter</p>
                             <input type="text" name="" placeholder="Your Email" />
                             <input type="submit" />
                         </div>
                     </div>
                 </div>

                 <div class="col-sm-2 offset-1">
                     <div class="footer__box">
                         <ul>
                             <li>
                                 <a href="#">What's new</a>
                             </li>
                             <li>
                                 <a href="#">New Courses</a>
                             </li>
                             <li>
                                 <a href="#">Partners</a>
                             </li>
                             <li>
                                 <a href="#">Terms of Use</a>
                             </li>
                         </ul>
                     </div>
                 </div>

                 <div class="col-sm-2">
                     <div class="footer__box">
                         <ul>
                             <li>
                                 <a href="#">Our Team</a>
                             </li>
                             <li>
                                 <a href="#">Course Catalog</a>
                             </li>
                             <li>
                                 <a href="#">License Our Content</a>
                             </li>
                             <li>
                                 <a href="#">Community</a>
                             </li>
                         </ul>
                     </div>
                 </div>

                 <div class="col-sm-2">
                     <div class="footer__box">
                         <ul>
                             <li>
                                 <a href="#">Blog</a>
                             </li>
                             <li>
                                 <a href="#">Teach</a>
                             </li>
                             <li>
                                 <a href="#">Partners</a>
                             </li>
                             <li>
                                 <a href="#">Privacy Policy</a>
                             </li>
                         </ul>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="down__footer">
         © 2022 fintekin | designed by think surf media All Rights Reserved
     </div>
 </footer>

 <div class="footer__cart__wrapp">
     <div class="mobile-wrapp">
         <div class="account__wwrapp mobile-wrapp">
             <div class="dropdown">
                 <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                     <img src="{{asset('assets/frontend/images/account.png')}}" />
                 </button>
                 <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                     <li>
                         <a class="dropdown-item" href="#">Action</a>
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
         <div class="cart__wrapp mobile-wrapp">
             <a href="#">
                 <img src="{{asset('assets/frontend/images/cart.png')}}" alt="" />
                 <span>0</span>
             </a>
         </div>
         <div class="account__wwrapp langu">
             <div class="dropdown">
                 <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                     ENG
                 </button>
                 <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
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

 <script src="{{asset('assets/frontend/js/jquery.min.js')}}"></script>
 <script src="{{ asset('assets/frontend/js/bootstrap.bundle.min.js') }}"></script>
 <script src="https://kit.fontawesome.com/2d537fef4a.js" crossorigin="anonymous"></script>
 <script src="{{ asset('assets/frontend/js/core.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/owl.js') }}"></script>
    <script src="{{ asset('assets/frontend/js/script.js') }}"></script>
 <script>
(function() {
    $(".hamburger-menu").on("click", function() {
        $(".bar").toggleClass("animate");
    });
})();
 </script>

 <script>
(function($) {
    $.fn.countTo = function(options) {
        options = options || {};

        return $(this).each(function() {
            // set options for current element
            var settings = $.extend({}, $.fn.countTo.defaults, {
                from: $(this).data('from'),
                to: $(this).data('to'),
                speed: $(this).data('speed'),
                refreshInterval: $(this).data('refresh-interval'),
                decimals: $(this).data('decimals')
            }, options);

            // how many times to update the value, and how much to increment the value on each update
            var loops = Math.ceil(settings.speed / settings.refreshInterval),
                increment = (settings.to - settings.from) / loops;

            // references & variables that will change with each update
            var self = this,
                $self = $(this),
                loopCount = 0,
                value = settings.from,
                data = $self.data('countTo') || {};

            $self.data('countTo', data);

            // if an existing interval can be found, clear it first
            if (data.interval) {
                clearInterval(data.interval);
            }
            data.interval = setInterval(updateTimer, settings.refreshInterval);

            // initialize the element with the starting value
            render(value);

            function updateTimer() {
                value += increment;
                loopCount++;

                render(value);

                if (typeof(settings.onUpdate) == 'function') {
                    settings.onUpdate.call(self, value);
                }

                if (loopCount >= loops) {
                    // remove the interval
                    $self.removeData('countTo');
                    clearInterval(data.interval);
                    value = settings.to;

                    if (typeof(settings.onComplete) == 'function') {
                        settings.onComplete.call(self, value);
                    }
                }
            }

            function render(value) {
                var formattedValue = settings.formatter.call(self, value, settings);
                $self.html(formattedValue);
            }
        });
    };

    $.fn.countTo.defaults = {
        from: 0, // the number the element should start at
        to: 0, // the number the element should end at
        speed: 1000, // how long it should take to count between the target numbers
        refreshInterval: 100, // how often the element should be updated
        decimals: 0, // the number of decimal places to show
        formatter: formatter, // handler for formatting the value before rendering
        onUpdate: null, // callback method for every time the element is updated
        onComplete: null // callback method for when the element finishes updating
    };

    function formatter(value, settings) {
        return value.toFixed(settings.decimals);
    }
}(jQuery));

jQuery(function($) {
    // custom formatting example
    $('.count-number').data('countToOptions', {
        formatter: function(value, options) {
            return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
        }
    });

    // start all the timers
    $('.timer').each(count);

    function count(options) {
        var $this = $(this);
        options = $.extend({}, options || {}, $this.data('countToOptions') || {});
        $this.countTo(options);
    }
});
 </script>
 </body>

 </html>