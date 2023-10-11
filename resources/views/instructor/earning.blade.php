@extends('layouts.instructor')

@section('content')
<div class="db__content">
    <div class="content-wrap">
        <div class="content-box has-h2--bold">
            <h2>Earnings Overview</h2>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora, alias.</p>
        </div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Earning History</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="table-responsive-md earnings-table-wrap">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>SL No.</th>
                                <th>Date</th>
                                <th>Type</th>
                                <th>Description</th>
                                <th>Course</th>
                                <th>Amount</th>
                                <th>Ref ID</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>abc123</td>
                                <td>John Doe</td>
                                <td>$500.00</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>abc123</td>
                                <td>John Doe</td>
                                <td>$500.00</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>abc123</td>
                                <td>John Doe</td>
                                <td>$500.00</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>abc123</td>
                                <td>John Doe</td>
                                <td>$500.00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
        </div>



        <div class="text-end">
            <button class="btn btn--primary" data-bs-toggle="modal" data-bs-target="#redeemFormModal">Redeem Earning</button>
        </div>

        <!-- Redeem Modal -->
        <div class="modal fade" id="redeemFormModal" tabindex="-1" role="dialog" aria-labelledby="redeemFormModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header border-0">
                        <h4 class="mb-0 text--dark fw-bold">Redeem Form</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="redeem-form-wrap">
                            <form action="#">
                                <div class="mb--20">
                                    <input type="number" name="rf_amount" placeholder="Enter amount here..." required="">
                                </div>
                                <div>
                                    <button type="submit" class="btn btn--primary w-100">Redeem Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@stop