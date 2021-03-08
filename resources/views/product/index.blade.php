@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Product') }}</div>
                <div class="card-body">
                    <a class="btn btn-success" href="{{ Route('product.create') }}">Add Product Data</a>
                </div>
                <div class="card-body">
                    <table class="table table-stripped">
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>quantity</th>
                            <th>unit</th>
                            <th>Aksi</th>
                        </tr>
                        @foreach ($product as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->product_name }}</td>
                            <td>{{ $item->price }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>{{ $item->unit }}</td>
                            <td>
                                <form action="{{ Route('product.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <a href="{{ Route('product.edit', $item->id) }}" class="btn btn-warning">Edit</a>
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