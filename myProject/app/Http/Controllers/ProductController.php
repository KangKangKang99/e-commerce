<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();
class ProductController extends Controller
{
    public function AuthLogin(){
        $admin_id=Session::get('admin_id');
        if($admin_id){
            return Redirect::to('dashboard');
        }
        else{
            return Redirect::to('admin')->send();
        }
    }
    /*product_admin*/
    public function add_product(){
        $this->AuthLogin();
        $category_product=DB::table('tbl_category_product')->orderby('category_id','desc')->get();
        $brand_product=DB::table('tbl_brand_product')->orderby('brand_id','desc')->get();
        return view('admin.add_product')->with('category_product',$category_product)->with('brand_product',$brand_product);
    }

    public function all_product(){
        $this->AuthLogin();
        $all_product=DB::table('tbl_product')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id')
            ->orderby('tbl_product.product_id','desc')->paginate(10) ;
        $manager_product =view('admin.all_product')->with('all_product',$all_product);
        return view('admin_layout')->with('admin.all_product',$manager_product);
    }

    public function save_product(Request $request){
        $data=array();
        $data['product_name']=$request->product_name;
        $data['product_price']=$request->product_price;
        $data['product_desc']=$request->product_desc;
        $data['product_content']=$request->product_content;
        $data['product_detail_desc']=$request->product_detail_desc;
        $data['category_id']=$request->product_category;
        $data['brand_id']=$request->product_brand;
        $data['product_status']=$request->product_status;
        $get_image=$request->file('product_image');
        $get_image1=$request->file('product_image1');
        $get_image2=$request->file('product_image2');
        $get_image3=$request->file('product_image3');

            if($get_image && $get_image1 && $get_image2 && $get_image3 ){
                $get_name_image = $get_image->getClientOriginalName();
                $name_image=current(explode('.',$get_name_image));
                $new_image=$name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
                $get_image->move('public/uploads/product',$new_image);
                $data['product_img']=$new_image;

                $get_name_image1 = $get_image1->getClientOriginalName();
                $name_image1=current(explode('.',$get_name_image1));
                $new_image1=$name_image1.rand(0,99).'.'.$get_image1->getClientOriginalExtension();
                $get_image1->move('public/uploads/product/details_product',$new_image1);
                $data['product_img1']=$new_image1;
                $get_name_image2 = $get_image2->getClientOriginalName();
                $name_image2=current(explode('.',$get_name_image2));
                $new_image2=$name_image2.rand(0,99).'.'.$get_image2->getClientOriginalExtension();
                $get_image2->move('public/uploads/product/details_product',$new_image2);
                $data['product_img2']=$new_image2;
                $get_name_image3 = $get_image3->getClientOriginalName();
                $name_image3=current(explode('.',$get_name_image3));
                $new_image3=$name_image3.rand(0,99).'.'.$get_image3->getClientOriginalExtension();
                $get_image3->move('public/uploads/product/details_product',$new_image3);
                $data['product_img3']=$new_image3;
                DB::table('tbl_product')->insert($data);
                Session::put('message','*successfully added');
                return Redirect::to('add-product');
            }
        $data['product_img']='';
        $data['product_img1']='';
        $data['product_img2']='';
        $data['product_img3']='';

        DB::table('tbl_product')->insert($data);
        Session::put('message','*successfully added');
        return Redirect::to('add-product');
    }

    /*active*/
    public  function active_product($product_id){
        DB::table('tbl_product')->where('product_id',$product_id)->update(['product_status'=>0]);
        Session::put('message','*successfully enabled');
        return Redirect::to('all-product');
    }

    public  function unactive_product($product_id){
        DB::table('tbl_product')->where('product_id',$product_id)->update(['product_status'=>1]);
        Session::put('message','*successfully disnabled');
        return Redirect::to('all-product');
    }

    /*edit and delete*/
    public function edit_product($product_id){
        $category_product=DB::table('tbl_category_product')->orderby('category_id','desc')->get();
        $brand_product=DB::table('tbl_brand_product')->orderby('brand_id','desc')->get();

        $edit_product=DB::table('tbl_product')->where('product_id',$product_id)->get();
        $manager_product =view('admin.edit_product')->with('edit_product',$edit_product)
            ->with('category_product',$category_product)
            ->with('brand_product',$brand_product);
        return view('admin_layout')->with('admin.edit_product',$manager_product);

    }
    public function update_product( Request $request,$product_id){
        $data=array();
        $data['product_name']=$request->product_name;
        $data['product_desc']=$request->product_desc;
        $data['product_name']=$request->product_name;
        $data['product_price']=$request->product_price;
        $data['product_desc']=$request->product_desc;
        $data['product_content']=$request->product_content;
        $data['product_detail_desc']=$request->product_detail_desc;
        $data['category_id']=$request->product_category;
        $data['brand_id']=$request->product_brand;
        $data['product_status']=$request->product_status;
        $get_image=$request->file('product_image');

        $get_image1=$request->file('product_image1');
        $get_image2=$request->file('product_image2');
        $get_image3=$request->file('product_image3');

        if($get_image && $get_image1 && $get_image2 && $get_image3 ){ // lỗi
            $get_name_image = $get_image->getClientOriginalName();
            $name_image=current(explode('.',$get_name_image));
            $new_image=$name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('public/uploads/product',$new_image);
            $data['product_img']=$new_image;

            $get_name_image1 = $get_image1->getClientOriginalName();
            $name_image1=current(explode('.',$get_name_image1));
            $new_image1=$name_image1.rand(0,99).'.'.$get_image1->getClientOriginalExtension();
            $get_image1->move('public/uploads/product/details_product',$new_image1);
            $data['product_img1']=$new_image1;
            $get_name_image2 = $get_image2->getClientOriginalName();
            $name_image2=current(explode('.',$get_name_image2));
            $new_image2=$name_image2.rand(0,99).'.'.$get_image2->getClientOriginalExtension();
            $get_image2->move('public/uploads/product/details_product',$new_image2);
            $data['product_img2']=$new_image2;
            $get_name_image3 = $get_image3->getClientOriginalName();
            $name_image3=current(explode('.',$get_name_image3));
            $new_image3=$name_image3.rand(0,99).'.'.$get_image3->getClientOriginalExtension();
            $get_image3->move('public/uploads/product/details_product',$new_image3);
            $data['product_img3']=$new_image3;
            DB::table('tbl_product')->insert($data);
            Session::put('message','*successfully added');
            return Redirect::to('add-product');
        }
        $data['product_img']='';
        $data['product_img1']='';
        $data['product_img2']='';
        $data['product_img3']='';

        DB::table('tbl_product')->where('product_id',$product_id)->update($data);
        Session::put('message','*successfully update');
        return Redirect::to('all-product');
    }
    public function delete_product($product_id){
        DB::table('tbl_product')->where('product_id',$product_id)->delete();
        Session::put('message','*successfully deleted');
        return Redirect::to('all-product');
    }
   /* end admin*/
    public function details_product($product_id){
        $details_product=DB::table('tbl_product')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id')
            ->where('tbl_product.product_id',$product_id)->get();

        foreach ($details_product as $key =>$value){
            $category_id = $value->category_id ;
        }
        $related_product=DB::table('tbl_product')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id')
            ->where('tbl_category_product.category_id',$category_id)->whereNotIn('tbl_product.product_id',[$product_id])->limit(4)->get();

        return view('pages.product.show_details')->with('product_details',$details_product)->with('relate',$related_product);
    }
}
