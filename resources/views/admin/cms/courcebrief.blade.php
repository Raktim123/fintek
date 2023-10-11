<x-admin-layout>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastr@2.1.4/toastr.min.css" />
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
    <!--sidebar wrapper -->
    @include('admin.inc.sidebar')
    <!--end sidebar wrapper -->

    <!--start header -->
    @include('admin.inc.header')
    <!--end header -->

    <style>
        .is-invalid {
            border-color: red;
        }
    </style>
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">CMS</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a></li>
                            <li class="breadcrumb-item active" aria-current="page">Cource Preview</li>
                        </ol>
                    </nav>
                </div>
            </div>

            <!--end breadcrumb-->
            <div class="row row-cols-1 row-cols-1">
                <div class="col">
                    <div class="card border-top border-0 border-4 border-primary">
                        <div class="card-body p-5">
                            <div class="card-title d-flex align-items-center">
                                <div><i class="bx bxs-user me-1 font-22 text-primary"></i></div>
                                <h5 class="mb-0 text-dark">Cource Preview</h5>
                            </div>
                            <hr>
                            
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Cource Thumbnal</th>
                                                <th>Cource Title</th>
                                                <th>Cource Category</th>
                                                <th>Cource Language</th>
                                                <th>Cource Type</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php foreach($alldata as $value) { ?>
                                            <tr>
                                                <td>
                                                <img src="{{asset(Storage::url($value['thumbnail']))}}" width="100" height="100" alt="Image Preview">
                                                </td>
                                                <td>
                                                    {{$value['title']}}
                                                </td>
                                                
                                                
                                                <td>
                                                    {{$value['name']}}
                                                </td>
                                                <td>
                                                    {{$value['language']}}
                                                </td>
                                                <?php if($value['price_type']=="FREE") { ?>
                                                <td>
                                                    {{"Free"}}
                                                </td>
                                                <?php } else {?>
                                                <td>
                                                    {{'$'.$value['price']}}
                                                </td>
                                                <?php } ?>
                                                <td>
                                                <a href="{{route('coursesinfo.show',$value['id'])}}" class="btn btn-sm btn-success mx-1">View</a>
                                                    
                                                </td>
                                            </tr>
                                            <?php } ?>
                                        </tbody>

                                    </table>
                                </div>

                                
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
    @include('admin.inc.footer')
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/toastr@2.1.4/toastr.min.js"></script>
    <script>
        CKEDITOR.replace('content');

        function addForm() {
            const tbody = document.getElementById("tbody");
            const row = document.getElementById("row");
            const clonedRow = row.cloneNode(true);

            // Clear input fields in the cloned form
            const inputFields = clonedRow.querySelectorAll("input");
            inputFields.forEach(input => {
                input.value = "";
            });

            // Append the cloned form to the form
            tbody.appendChild(clonedRow);
        }

        $(document).on("click", ".removeRow", function(event) {
            $(this).parent().parent().parent().parent().remove()
        })

        function previewImage(event) {
            const imageInput = document.getElementById('imageInput');
            const imagePreview = document.getElementById('imagePreview');

            if (imageInput.files && imageInput.files[0]) {
                const reader = new FileReader();

                reader.onload = function(e) {
                    imagePreview.style.display = 'block';
                    imagePreview.src = e.target.result;
                };

                reader.readAsDataURL(imageInput.files[0]);
            } else {
                imagePreview.style.display = 'none';
            }
        }
    </script>

</x-admin-layout>