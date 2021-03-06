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
          <h5>Category Table</h5>
          

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Edit Category
         
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
            <form method="post" action="{{ url('update/subcategory/'.$subcat->id)}}">
              @csrf
              <div class="modal-body pd-20">
                <div class="form-group">
                {{-- <input type="hidden" name="id" value="{{$category_id}}"> --}}
                  <label for="exampleInputEmail1">Sub Category Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value={{$subcat->subcategory_name}}  name="subcategory_name">
                </div>

                    <div class="form-group">
                  <label for="exampleInputEmail1">Category </label>
                  <select class="form-control" name="category_id">
                  	@foreach($category as $row)
                  	<option value="{{ $row->id }}" <?php if($row->id == $subcat->category_id) {
                      echo "selected";
                    } ?>>{{ $row->category_name }}</option>
                  	@endforeach
                  </select>
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
