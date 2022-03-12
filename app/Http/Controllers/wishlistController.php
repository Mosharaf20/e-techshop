<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class wishlistController extends Controller
{
    public function AddWishlist($id)
    {
        $userid=Auth::id();
        $check=DB::table('wishlists')->where('user_id',$userid)->where('product_id',$id)->first();

        $data= array(
            'user_id' => $userid,
            'product_id' => $id
        );
       
        if(Auth::check()){
            if($check){
                return \Response::json(['error' => 'Product Already has on your wishlist']);
            }else
            {
                DB::table('wishlists')->insert($data);
                return \Response::json(['success' => 'Product on wishlist']);
                // $notification=array(
                //     'messege'=>'Added to wishlist',
                //     'alert-type'=>'success'
                //      );
                //  return Redirect()->back()->with($notification);
            }

        } else {
            return \Response::json(['error' => 'Add First Login Your Account']);

        }
        
    }
}
