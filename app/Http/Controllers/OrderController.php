<?php

namespace App\Http\Controllers;

use App\Order;
use App\Customer;
use App\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $order = Order::all();
        return view('order.index', compact('order'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $customer = Customer::all();
        $product = Product::all();
        return view('order.create', compact('customer', 'product'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, [
            'customer_name'=>'required',
            'product_name'=>'required',
            'price'=>'required',
            'quantity'=>'required'
        ]);
        Order::create([
            'customer_name'=>$request->customer_name,
            'product_name'=>$request->product_name,
            'price'=>$request->price,
            'quantity'=>$request->quantity,
            'total'=>$request->price * $request->quantity
        ]);
        return redirect()
            ->route('order.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
        $customer = Customer::all();
        $product = Product::all();
        return view('order.edit', compact('order', 'customer', 'product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
        $this->validate($request, [
            'customer_name'=>'required',
            'product_name'=>'required',
            'price'=>'required',
            'quantity'=>'required'
        ]);
        $order->update([
            'customer_name'=>$request->customer_name,
            'product_name'=>$request->product_name,
            'price'=>$request->price,
            'quantity'=>$request->quantity,
            'total'=>$request->price * $request->quantity
        ]);
        return redirect()
            ->route('order.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
        $order->delete();
        return redirect(route('order.index'));
    }
}
