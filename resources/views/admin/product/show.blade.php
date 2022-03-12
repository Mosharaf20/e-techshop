@extends('admin.admin_layouts')

@section('admin_content')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" crossorigin="anonymous">

    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="#">Starlight</a>
        <span class="breadcrumb-item active">Product Section</span>
      </nav>
      <div class="sl-pagebody">
      	   <div class="card pd-20 pd-sm-40">
          <p class="mg-b-20 mg-sm-b-30">Product Details</p>
        
          <div class="form-layout">
            <div class="row mg-b-25">
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Product Name: <span class="tx-danger">*</span></label>
                 <br>
                 <span>{{$product->product_name}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Product Code: <span class="tx-danger">*</span></label>
                 <br>
                 <span>{{$product->product_code}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Quantity <span class="tx-danger">*</span></label>
                 <br>
                 <span>{{$product->product_quantity}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Category: <span class="tx-danger">*</span></label>
                 <br>
                 <span>{{$product->category_name}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Sub Category: <span class="tx-danger">*</span></label>
                <br>
                 <span>{{$product->subcategory_name}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Brand: <span class="tx-danger">*</span></label>
                 <br>
                 <span>{{$product->brand_name}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Product Size: <span class="tx-danger">*</span></label><br>
                <br>
                 <span>{{$product->product_size}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Product Color: <span class="tx-danger">*</span></label><br>
                <br>
                 <span>{{$product->product_color}}</span>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Selling Price <span class="tx-danger">*</span></label>
                  <br>
                 <span>{{$product->selling_price}}</span>
                </div>
              </div><!-- col-4 -->

              <div class="col-lg-12">
              	<div class="form-group">
                  <label class="form-control-label">Product Details<span class="tx-danger">*</span></label>
                 <br>
                 <p style="border:1px solid grey; padding:10px;">{{!! $product->product_details !!}}</p>
                </div>	
              </div>
              <div class="col-lg-12">
              	<div class="form-group">
                  <label class="form-control-label">Video Link<span class="tx-danger">*</span></label>
                  <br>
                 <span>{{$product->video_link}}</span>
                </div>	
              </div>

              <div class="col-lg-4">
              	<lebel>Image One (Main Thumbnail)<span class="tx-danger">*</span></lebel>
              	<label class="custom-file">
      				
      				  <img src="{{URL::to($product->image_one)}}" style="height: 80px; width:80px"  >
      				</label>
              </div>
              <div class="col-lg-4">
              	<lebel>Image Two <span class="tx-danger">*</span></lebel>
              	<label class="custom-file">
      				 <img src="{{URL::to($product->image_two)}}" style="height: 80px; width:80px"  >
      				 
      				</label>
              </div>
              <div class="col-lg-4">
              	<lebel>Image Three <span class="tx-danger">*</span></lebel>
              	<label class="custom-file">
      				 <img src="{{URL::to($product->image_three)}}" style="height: 80px; width:80px"  >
      				</label>
              </div>
            </div><!-- row -->
            <br><hr>
            <div class="row">
            	<div class="col-lg-4">
            		<label>
					@if($product->main_slider == 1)
					  <span class="badge badge-success">Active</span> |
					@else
					<span class="badge badge-danger">Inactive</span> |
					@endif
					  <span>Main Slider</span>
					</label>
            	</div>
            	<div class="col-lg-4">
            		<label>
					  	 @if($product->hot_deal==1)
                     <span class="badge badge-success">Active</span> |
                       @else 
                       <span class="badge badge-danger">Inactive</span> |
                     @endif
					  <span>Hot Deal</span>
					</label>
            	</div>
            	<div class="col-lg-4">
            		<label>
					   	 @if($product->best_rated==1)
                     <span class="badge badge-success">Active</span> |
                       @else 
                       <span class="badge badge-danger">Inactive</span> |
                     @endif
					  <span>Best Rated</span>
					</label>
            	</div>
            	<div class="col-lg-4">
            		<label>
					  @if($product->trend == 1)
					  <span class="badge badge-success">Active</span> |
					@else
					<span class="badge badge-danger">Inactive</span> |
					@endif
					  <span>Trend Product</span>
					</label>
            	</div>
            	<div class="col-lg-4">
            		<label>
					 @if($product->mid_slider == 1)
					  <span class="badge badge-success">Active</span> |
					@else
					<span class="badge badge-danger">Inactive</span> |
					@endif
					  <span>Mid Slider</span>
					</label>
            	</div>
            	<div class="col-lg-4">
            		<label>
      					 @if($product->hot_new == 1)
					  <span class="badge badge-success">Active</span> |
					@else
					<span class="badge badge-danger">Inactive</span> |
					@endif
      					  <span>Hot New</span>
      					</label>
            	</div>


            </div>

            <br><br><hr>
       
        </div><!-- card -->
       
      </div><!-- sl-pagebody --> 
    </div><!-- sl-mainpanel -->

@endsection
