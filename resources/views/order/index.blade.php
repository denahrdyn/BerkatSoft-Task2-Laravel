@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Sales Order') }}</div>
                <div class="card-body">
                    <a class="btn btn-success" href="{{ Route('order.create') }}">Add Sales Order</a>
                </div>
                <div class="card-body">
                    <table class="table table-stripped">
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Aksi</th>
                        </tr>
                        @foreach ($order as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->customer_name }}</td>
                            <td>{{ $item->product_name }}</td>
                            <td>{{ $item->price }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>{{ $item->total }}</td>
                            <td>
                                <form action="{{ Route('order.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <a href="{{ Route('order.edit', $item->id) }}" class="btn btn-warning">Edit</a>
                                    <button class="btn btn-danger" type="submit">Delete</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection