$(document).ready(function () {
  // ---> Site Header Shrink
  const siteHeader = $(".site-header");
  $(window).scroll(function () {
    if ($(document).scrollTop() > 30) {
      siteHeader.addClass("site-header--shrinked");
    } else {
      siteHeader.removeClass("site-header--shrinked");
    }

    // Scroll Top fade in out
    if ($(document).scrollTop() > 300) {
      $(".btn--scroll-to-top").addClass("show");
    } else {
      $(".btn--scroll-to-top").removeClass("show");
    }
  });

  $(".btn--scroll-to-top").on("click", function () {
    scrollToTop(0, 500);
  });

  function scrollToTop(offset, duration) {
    $("html, body").animate({ scrollTop: offset }, duration);
    return false;
  }

  // ---> Test Overflowing Element
  // var docWidth = document.documentElement.offsetWidth;

  // [].forEach.call(document.querySelectorAll("*"), function (el) {
  //   if (el.offsetWidth > docWidth) {
  //     console.log(el);
  //   }
  // });

  // ---> Products Carousel
  $(".products-carousel").owlCarousel({
    loop: true,
    autoplay: true,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    margin: 10,
    nav: false,
    navText: ["<i class='fa-solid fa-chevron-left'></i>", "<i class='fa-solid fa-chevron-right'></i>"],
    dots: true,
    responsive: {
      0: {
        items: 2,
        margin: 12,
      },
      576: {
        items: 3,
        margin: 14,
      },
      768: {
        margin: 16,
      },
      992: {
        items: 3,
        margin: 24,
      },
      1200: {
        items: 4,
        margin: 24,
      },
      1400: {
        items: 4,
        margin: 28,
      },
      1700: {
        items: 4,
        margin: 32,
      },
    },
  });

  // ---> Accordion
  $(".set > a").on("click", function (e) {
    e.preventDefault();

    if ($(this).hasClass("active")) {
      $(this).removeClass("active");
      $(this).siblings(".content").slideUp(200);
      $(".set > a i").removeClass("fa-chevron-up").addClass("fa-chevron-down");
    } else {
      $(".set > a i").removeClass("fa-chevron-down").addClass("fa-chevron-down");
      $(this).find("i").removeClass("fa-chevron-down").addClass("fa-chevron-up");
      $(".set > a").removeClass("active");
      $(this).addClass("active");
      $(".content").slideUp(200);
      $(this).siblings(".content").slideDown(200);
    }
  });

  $(".new-course-wrap-section aside .block ul li a").on("click", function (e) {
    e.preventDefault();
    var getTarget = $(this).attr("data-target");
    // console.log(getTarget);
    $(".new-course-wrap-section aside .block ul li").removeClass("active");
    $(this).parent().addClass("active");

    $(".new-course-wrap-section .tab-pane").removeClass("active");
    $(".new-course-wrap-section .tab-pane[data-id='" + getTarget + "']").addClass("active");
  });

  // ---> New Course Form
  //---> Intended Learners Form
  //---> Curriculum Form Wrap
  function initSectionEdit() {
    $(".curriculumn-form-wrap .btn--section-edit").on("click", function () {
      $(this).closest(".cur-section__header").addClass("edit-mode-active");
      $(this).closest(".cur-section__header").find("input").removeAttr("disabled");
    });
  }

  function initSectionEditCancel() {
    $(".curriculumn-form-wrap .btn--section-edit-cancel").on("click", function () {
      $(this).closest(".cur-section__header").removeClass("edit-mode-active");
      $(this).closest(".cur-section__header").find("input").attr("disabled", "disabled");
    });
  }

  function initChapterBlockExpand() {
    $(".curriculumn-form-wrap .btn--chapter-block-expand").on("click", function () {
      if ($(this).closest(".chapter-block").hasClass("is-opened")) {
        $(this).closest(".chapter-block").removeClass("is-opened");
        $(this).closest(".chapter-block").find(".chapter-block__body").slideUp(300);
      } else {
        $(this).closest(".chapter-block").addClass("is-opened");
        $(this).closest(".chapter-block").find(".chapter-block__body").slideDown(300);
      }
    });
  }

  // Selecting paid or free course - showing currency and amount section as per input
  $(".add-course-form-wrap #courseType").on("change", function () {
    $(".add-course-form-wrap .pricing-input-field").removeClass("active");

    if ($(this).val() === "paid") {
      $(".add-course-form-wrap .pricing-input-field").addClass("active");
    }
  });

  // Internded learners duplicate field creation
  $(".intended-learners-form-wrap .btn--add-response").on("click", function () {
    var getInputFieldName = $(this).prev().find("input").attr("name");
    var htmlString = `<li>
    <input type="text" name="${getInputFieldName}" placeholder="Example: Estimate project timelines and budgets" />
  </li>`;

    if ($(this).prev().find("li:last-child input").val().trim().length > 0) {
      $(this).prev().append(htmlString);
    }
  });

  // duplication section creation function
  $(".curriculumn-form-wrap .btn--add-section").on("click", function () {
    let htmlString = "";

    htmlString += `<li>
    <fieldset class="cur-section">
      <div class="cur-section__header">
        <div class="row align-items-center">
          <div class="col-9 d-flex align-items-center">
            <p class="fw-bold mb-0 flex-shrink-0">Section 1: <i class="fa-regular fa-file ms-3 me-1"></i></p>
            <input type="text" name="cur_section_1" value="Section Title" disabled="">
          </div>
          <div class="col-3">
            <div class="cta-btns text-end">
              <button type="button" class="btn--section-edit"><i class="fa-regular fa-pen-to-square"></i></button>
              <button type="button" class="btn--section-remove"><i class="fa-regular fa-trash-can"></i></button>
            </div>
          </div>
        </div>

        <div class="final-action-btns text-end">
          <button type="button" class="btn--section-edit-cancel">Cancel</button>
          <button type="button" class="btn btn--dark btn--section-edit-save">Save</button>
        </div>
      </div>
      <div class="cur-section__body">
        <ul class="chapter-list">
          <li class="chapter-block">
            <div class="chapter-block__header">
              <div class="row">
                <div class="col-9">
                  <span class="me-2"><i class="fa-solid fa-circle-check me-1"></i> Lecture 1:</span>
                  <span><i class="fa-regular fa-file me-1"></i>Introduction</span>
                </div>
                <div class="col-3">
                  <div class="cta-btns text-end">
                    <button type="button" class="btn--chapter-block-expand"><i class="fa-solid fa-chevron-down"></i></button>
                    <button type="button" class="chapter-block--remove"><i class="fa-regular fa-trash-can"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <div class="chapter-block__body">
              <div>
                <label class="label">Chapter Title</label>
                <input type="text" name="chapter_title[]" value="Demo Title 1" placeholder="Enter your chapter title">
              </div>

              <div class="position-relative">
                <label class="label">Upload Video</label>
                <label for="chapter1VideoBtn" class="custom-file-upload-btn">
                  <span>No file Selected</span>
                  <span>Upload File</span>
                </label>
                <input type="file" name="chapter_1_video[]" class="custom-file-upload-input" id="chapter1VideoBtn">
              </div>

              <!-- <div class="position-relative">
                <label class="label">Upload Slide</label>
                <label for="chapter1SlideBtn" class="custom-file-upload-btn">
                  <span>No file Selected</span>
                  <span>Upload File</span>
                </label>
                <input type="file" name="chapter_1_slide_" class="custom-file-upload-input" id="chapter1SlideBtn" />
              </div> -->

              <!-- <div class="position-relative">
                <label class="label">Upload Article</label>
                <label for="chapter1ArticleBtn" class="custom-file-upload-btn">
                  <span>No file Selected</span>
                  <span>Upload File</span>
                </label>
                <input type="file" name="chapter_1_article" class="custom-file-upload-input" id="chapter1ArticleBtn" />
              </div> -->
            </div>
          </li>
        </ul>
        <div class="add-curriculumn-btn-wrapper">
          <button type="button" class="btn btn--dark btn--add-curriculumn"><i class="fa-solid fa-plus me-2"></i>Curriculum Item</button>
        </div>
      </div>
    </fieldset>
  </li>`;

    $(".curriculumn-form-wrap form .section-list").append(htmlString);
    initSectionEdit();
    initSectionEditCancel();
    initChapterBlockExpand();
    initAddCurriculum();
  });

  // duplicate chapter creation function
  function initAddCurriculum() {
    $(".curriculumn-form-wrap .btn--add-curriculumn").on("click", function () {
      let htmlString = "";

      htmlString += `<li class="chapter-block">
      <div class="chapter-block__header">
        <div class="row">
          <div class="col-9">
            <span class="me-2"><i class="fa-solid fa-circle-check me-1"></i> Lecture 1:</span>
            <span><i class="fa-regular fa-file me-1"></i>Introduction</span>
          </div>
          <div class="col-3">
            <div class="cta-btns text-end">
              <button type="button" class="btn--chapter-block-expand"><i class="fa-solid fa-chevron-down"></i></button>
              <button type="button" class="chapter-block--remove"><i class="fa-regular fa-trash-can"></i></button>
            </div>
          </div>
        </div>
      </div>
      <div class="chapter-block__body">
        <div>
          <label class="label">Chapter Title</label>
          <input type="text" name="chapter_title[]" value="Demo Title 1" placeholder="Enter your chapter title">
        </div>
  
        <div class="position-relative">
          <label class="label">Upload Video</label>
          <label for="chapter1VideoBtn" class="custom-file-upload-btn">
            <span>No file Selected</span>
            <span>Upload File</span>
          </label>
          <input type="file" name="chapter_1_video[]" class="custom-file-upload-input" id="chapter1VideoBtn">
        </div>
      </div>
    </li>`;

      $(this).closest(".cur-section__body").find(".chapter-list").append(htmlString);
      initChapterBlockExpand();
    });
  }

  initSectionEdit();
  initSectionEditCancel();
  initChapterBlockExpand();
  initAddCurriculum();

  $(".btn--sidebar-toggler").on("click", function () {
    $(".db__sidebar").toggleClass("db__sidebar--shrinked");
  });

  $(".btn--sidebar-close").on("click", function () {
    $(".db__sidebar").removeClass("db__sidebar--shrinked");
  });

  // ---> order change of list on drag
  // var rowSize = 100; // => container height / number of items
  // var container = document.querySelector(".container");
  // var listItems = Array.from(document.querySelectorAll(".list-item")); // Array of elements
  // var sortables = listItems.map(Sortable); // Array of sortables
  // var total = sortables.length;

  // TweenLite.to(container, 0.5, { autoAlpha: 1 });

  // function changeIndex(item, to) {
  //   // Change position in array
  //   arrayMove(sortables, item.index, to);

  //   // Change element's position in DOM. Not always necessary. Just showing how.
  //   if (to === total - 1) {
  //     container.appendChild(item.element);
  //   } else {
  //     var i = item.index > to ? to : to + 1;
  //     container.insertBefore(item.element, container.children[i]);
  //   }

  //   // Set index for each sortable
  //   sortables.forEach((sortable, index) => sortable.setIndex(index));
  // }

  // function Sortable(element, index) {
  //   var content = element.querySelector(".item-content");
  //   var order = element.querySelector(".order");

  //   var animation = TweenLite.to(content, 0.3, {
  //     boxShadow: "rgba(0,0,0,0.2) 0px 16px 32px 0px",
  //     force3D: true,
  //     scale: 1.1,
  //     paused: true,
  //   });

  //   var dragger = new Draggable(element, {
  //     onDragStart: downAction,
  //     onRelease: upAction,
  //     onDrag: dragAction,
  //     cursor: "inherit",
  //     type: "y",
  //   });

  //   // Public properties and methods
  //   var sortable = {
  //     dragger: dragger,
  //     element: element,
  //     index: index,
  //     setIndex: setIndex,
  //   };

  //   TweenLite.set(element, { y: index * rowSize });

  //   function setIndex(index) {
  //     sortable.index = index;
  //     order.textContent = index + 1;

  //     // Don't layout if you're dragging
  //     if (!dragger.isDragging) layout();
  //   }

  //   function downAction() {
  //     animation.play();
  //     this.update();
  //   }

  //   function dragAction() {
  //     // Calculate the current index based on element's position
  //     var index = clamp(Math.round(this.y / rowSize), 0, total - 1);

  //     if (index !== sortable.index) {
  //       changeIndex(sortable, index);
  //     }
  //   }

  //   function upAction() {
  //     animation.reverse();
  //     layout();
  //   }

  //   function layout() {
  //     TweenLite.to(element, 0.3, { y: sortable.index * rowSize });
  //   }

  //   return sortable;
  // }

  // Changes an elements's position in array
  // function arrayMove(array, from, to) {
  //   array.splice(to, 0, array.splice(from, 1)[0]);
  // }

  // Clamps a value to a min/max
  // function clamp(value, a, b) {
  //   return value < a ? a : value > b ? b : value;
  // }

  //---> Copy text from input - ref link
  function copyToClipboard() {
    var inputElement = $(".ref-link-wrap input");
    inputElement.select();
    document.execCommand("copy");
    alert("Copied to clipboard");
  }

  $(".ref-link-wrap .btn--copy-text").on("click", copyToClipboard);

  // ---> Custom Dropdown
  $(".custom-dropdown-wrap__btn--trigger").on("click", function(e) {
    e.preventDefault();
    $(this).next().toggleClass("active");
  })

  $("html").click(function (event) {
    if ($(event.target).closest(".custom-dropdown-wrap__btn--trigger, .custom-dropdown-wrap__body").length === 0) {
      $(".custom-dropdown-wrap__body").removeClass("active");
    }
  });

});
