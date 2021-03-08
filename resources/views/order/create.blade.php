@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Sales Order') }}</div>
                <div class="card-body">
                    <form action="{{ Route('order.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label class="small mb-1" for="customer_name">Name</label>
                            <select name="customer_name" id="customer_name" class="form-control">
                                @foreach ($customer as $item)
                                <option value="{{ $item->name }}">
                                    {{ $item->name }}
                                </option>
                                @endforeach
                            </select>
                            
                            @error('customer_name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label class="small mb-1" for="product_name">Kode Barang</label>
                            <select name="product_name" id="product_name" class="form-control">
                                @foreach ($product as $item)
                                <option value="{{ $item->product_name }}">
                                    {{ $item->product_name }}
                                </option>
                                @endforeach
                            </select>
                            
                            @error('product_name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        
                        <div class="form-group">
                            <label class="small mb-1" for="price">Price</label>
                            <select name="price" id="price" class="form-control">
                                @foreach ($product as $item)
                                <option value="{{ $item->price }}">
                                    {{ $item->price }}
                                </option>
                                @endforeach
                            </select>
                            
                            @error('price')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label class="small mb-1" for="quantity">Quantity</label>
                            <input type="text" id="quantity" name="quantity" class="form-control @error('quantity') is-invalid @enderror" value="{{ old('quantity') }}" require autocomplete="quantity" autofocus>

                            @error('quantity')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">SAVE</button>
                            <a class="btn btn-secondary" href="{{ route('order.index') }}">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection