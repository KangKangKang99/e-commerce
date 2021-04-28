<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Feeship;
use App\Shipping;
use App\Order;
use App\OrderDetails;
use App\Customer;
use App\Coupon;
use Illuminate\Support\Facades\Redirect;
use PDF;
session_start();
class OrderController extends Controller
{
    public function print_order($checkout_code){
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->print_order_convert($checkout_code));
        return $pdf->stream();
    }
    public function print_order_convert($checkout_code){
        return $checkout_code;

    }
    public function view_order($order_id){
        $order_details = OrderDetails::where('order_id',$order_id)->get();
        $order = Order::where('order_id',$order_id)->get();
        foreach($order as $key => $ord){
            $customer_id = $ord->customer_id;
            $shipping_id = $ord->shipping_id;
        }
        $customer = Customer::where('customer_id',$customer_id)->first();
        $shipping = Shipping::where('shipping_id',$shipping_id)->first();

        $order_details_product = OrderDetails::with('product')->where('order_id', $order_id)->get();

        return view('admin.view_order')->with(compact('order_details','customer','shipping','order_details'));

    }
    public function manage_order(){
        $order = Order::orderby('created_at','DESC')->get();
        return view('admin.manage_order')->with(compact('order'));
    }

    public function delete_order($order_id){

        /*$payment_id=DB::table('tbl_payment')->select('tbl_order.payment_id')->where('order_id',$order_id);
        BD::table('tbl_payment')->where('payment_id',$payment_id)->delete();*/
    
        $shipping_id=DB::table('tbl_order')->where('order_id',$order_id)->select('shipping_id')->get();
        $payment_id=DB::table('tbl_order')->where('order_id',$order_id)->select('payment_id')->get();
        DB::table('tbl_shipping')->where('shipping_id',$shipping_id)->detele();
        DB::table('tbl_payment')->where('payment_id',$payment_id)->detele();
         DB::table('tbl_order')->where('order_id',$order_id)->delete();
        DB::table('tbl_order_details')->where('order_id',$order_id)->delete();
        Session::put('message','*successfully deleted');
        $order = Order::orderby('created_at','DESC')->get();
        return view('admin.manage_order')->with(compact('order'));
    }
}
