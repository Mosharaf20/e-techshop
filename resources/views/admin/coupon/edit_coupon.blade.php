@extends('admin.admin_layouts')

@section('admin_content')



    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="index.html">Starlight</a>
        <a class="breadcrumb-item" href="index.html">Tables</a>
        <span class="breadcrumb-item active">Data Table</span>
      </nav>

      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5>Coupon Table</h5>
          

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Edit Coupon
         
          </h6>
          <br>
    
          <div class="table-wrapper">
           @if ($errors->any())
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif
            <form method="post" action="{{ url('update/coupon/'.$coupon->id) }}">
              @csrf
              <div class="modal-body pd-20">
                <div class="form-group">
               
                  <label for="exampleInputEmail1">Coupon code</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value={{$coupon->coupon}}  name="coupon">
                </div>

                  <div class="form-group">
               
                  <label for="exampleInputEmail1">Discount</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value={{$coupon->discount}}  name="discount">
                </div>
              </div><!-- modal-body -->
              <div class="modal-footer">
                <button type="submit" class="btn btn-info pd-x-20">Submit</button>
                <button type="button" class="btn btn-secondary pd-x-20" data-dismiss="modal">Close</button>
              </div>
            </form>
          </div><!-- table-wrapper -->
        </div><!-- card -->

      </div><!-- sl-pagebody -->

  
@endsection
