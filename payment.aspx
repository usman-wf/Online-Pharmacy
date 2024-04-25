<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="db_Project.premium" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
 
    <title>Payment</title>
</head>
<body>
    <form runat="server"> <!-- Web Forms use server-side form tags -->
        <div class="container-fluid my-5">
            <div class="row justify-content-center">
                <div class="col-xl-10">
                    <div class="card shadow-lg">
                        <div class="row p-2 mt-3 justify-content-between mx-sm-2">
                            <div class="col">
                                <p class="text-muted space mb-0 shop">Shop No.78618K</p>
                                <p class="text-muted space mb-0 shop">Store Locator</p>
                            </div>
                            <div class="col">
                                <div class="row justify-content-start">
                                    <div class="col">
                                        <img class="irc_mi img-fluid cursor-pointer" src="images/cart.jpg" width="70" height="70">
                                    </div>
                                </div>
                            </div>
                            <div class="col-auto">
                                <img class="irc_mi img-fluid bell" src="images/cart.jpg" width="30" height="30">
                            </div>
                        </div>
                        <div class="row mx-auto justify-content-center text-center">
                            <div class="col-12 mt-3">
                                <nav aria-label="breadcrumb" class="second">
                                    <ol class="breadcrumb indigo lighten-6 first">
                                        <li class="breadcrumb-item font-weight-bold">
                                            <a class="black-text text-uppercase" href="home.html">
                                                <span class="mr-md-3 mr-1">BACK TO SHOP</span>
                                            </a>
                                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="row justify-content-around">
            <div class="col-md-5">
                <div class="card border-0">
                    <div class="card-header pb-0">
                        <h2 class="card-title space">Checkout</h2>
                        <p class="card-text text-muted mt-4 space">SHIPPING DETAILS</p>
                        <hr class="my-0">
                    </div>
                    <div class="card-body">
                        <div class="row justify-content-between">
                            <div class="col-auto mt-0">
                                <p><b>Shipping Info</b></p> <!-- Change as needed -->
                            </div>
                            <div class="col-auto">
                                <p><b>Order Summary</b></p> <!-- Change as needed -->
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col">
                                <p class="text-muted mb-2">PAYMENT DETAILS</p>
                                <hr class="mt-0">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="NameOnCard" class="small text-muted mb-1">NAME ON CARD</label>
                            <input type="text" class="form-control form-control-sm" name="NameOnCard" id="NameOnCard" placeholder="BBBootstrap Team">
                        </div>
                        <div class="form-group">
                            <label for="CardNumber" class="small text-muted mb-1">CARD NUMBER</label>
                            <input type="text" class="form-control form-control-sm" name="CardNumber" id="CardNumber" placeholder="4534 5555 5555 5555">
                        </div>
                        <div class="row no-gutters">
                            <div class="col-sm-6 pr-sm-2">
                                <div class="form-group">
                                    <label for="ValidThrough" class="small text-muted mb-1">VALID THROUGH</label>
                                    <input type="text" class="form-control form-control-sm" name="ValidThrough" id="ValidThrough" placeholder="06/21">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="CVC" class="small text-muted mb-1">CVC CODE</label>
                                    <input type="text" class="form-control form-control-sm" name="CVC" id="CVC" placeholder="183">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-md-5">
                            <div class="col">
                                <button type="submit" name="" class="btn btn-lg btn-block">PURCHASE $37 SEK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

               <div class="col-md-5">
            <div class="card border-0">
                <div class="card-header card-2">
                    <p class="card-text text-muted mt-md-4 mb-2 space">YOUR ORDER 
                        <span class="small text-muted ml-2 cursor-pointer">EDIT SHOPPING BAG</span>
                    </p>
                    <hr class="my-2">
                </div>
                <div class="card-body pt-0">
                    <div class="row justify-content-between">
                        <div class="col-auto col-md-7">
                            <div class="media flex-column flex-sm-row">
                                <img class="img-fluid" src="https://i.imgur.com/6oHix28.jpg" width="62" height="62">
                                <div class="media-body my-auto">
                                    <div class="row">
                                        <div class="col-auto">
                                            <p class="mb-0"><b>EC-GO Bag Standard</b></p>
                                            <small class="text-muted">1 Week Subscription</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p class="boxed-1">2</p>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p><b>179 SEK</b></p>
                        </div>
                    </div>
                    <hr class="my-2">
                    <div class="row justify-content-between">
                        <div class="col-auto col-md-7">
                            <div class="media flex-column flex-sm-row">
                                <img class="img-fluid" src="https://i.imgur.com/9MHvALb.jpg" width="62" height="62">
                                <div class="media-body my-auto">
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-0"><b>EC-GO Bag Standard</b></p>
                                            <small class="text-muted">2 Week Subscription</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p class="boxed">3</p>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p><b>179 SEK</b></p>
                        </div>
                    </div>
                    <hr class="my-2">
                    <div class="row justify-content-between">
                        <div class="col-auto col-md-7">
                            <div class="media flex-column flex-sm-row">
                                <img class="img-fluid" src="https://i.imgur.com/6oHix28.jpg" width="62" height="62">
                                <div class="media-body my-auto">
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-0"><b>EC-GO Bag Standard</b></p>
                                            <small class="text-muted">2 Week Subscription</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p class="boxed-1">2</p>
                        </div>
                        <div class="pl-0 flex-sm-col col-auto my-auto"> 
                            <p><b>179 SEK</b></p>
                        </div>
                    </div>
                    <hr class="my-2">
                    <div class="row justify-content-between">
                        <div class="col-4"><p class="mb-1"><b>Subtotal</b></p></div>
                        <div class="flex-sm-col col-auto"><p class="mb-1"><b>179 SEK</b></p></div>
                    </div>
                    <div class="row justify-content-between">
                        <div class="col"><p class="mb-1"><b>Shipping</b></p></div>
                        <div class="flex-sm-col col-auto"><p class="mb-1"><b>0 SEK</b></p></div>
                    </div>
                    <div class="row justify-content-between">
                        <div class="col-4"><p><b>Total</b></p></div>
                        <div class="flex-sm-col col-auto"><p class="mb-1"><b>537 SEK</b></p> </div>
                    </div>
                    <hr class="my-0">
                    <div class="row mb-5 mt-4">
                        <div class="col-md-7 col-lg-6 mx-auto"><button type="button" class="btn btn-block btn-outline-primary btn-lg">ADD GIFT CODE</button></div>
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
