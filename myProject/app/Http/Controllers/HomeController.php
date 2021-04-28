<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
/*session_start();*/
class HomeController extends Controller
{
    function index(){
        $category_product=DB::table('tbl_category_product')->where('category_status','1')->orderby('category_id','asc')->get();
        $brand_product=DB::table('tbl_brand_product')->orderby('brand_id','asc')->where('brand_status','1')->get();
        $all_product =DB::table('tbl_product')->where('product_status',1)->orderby('product_id','asc')->limit(4)->get();
        return view('pages.home')->with('category',$category_product)->with('brand',$brand_product)->with('all_product',$all_product);
    }
    function  product(){
        $category_product=DB::table('tbl_category_product')->where('category_status','1')->orderby('category_id','asc')->get();
        $brand_product=DB::table('tbl_brand_product')->orderby('brand_id','asc')->where('brand_status','1')->get();
        $all_product =DB::table('tbl_product')->where('product_status',1)->orderby('product_id','desc')->paginate(9);
        return view('pages.product')->with('category',$category_product)->with('brand',$brand_product)->with('all_product',$all_product);
    }
    public function search(Request $request){
        $category_product=DB::table('tbl_category_product')->where('category_status','1')->orderby('category_id','asc')->get();
        $brand_product=DB::table('tbl_brand_product')->orderby('brand_id','asc')->where('brand_status','1')->get();
        $keyword=$request->keyword_submit;
        $search_product=DB::table('tbl_product')->where('product_name','like','%'.$keyword.'%')->orwhere('product_price',$keyword)
                                                ->paginate(9);

        return view('search')->with('category',$category_product)->with('brand',$brand_product)->with('search_product',$search_product);

    }
}
