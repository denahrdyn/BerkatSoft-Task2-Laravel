@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Product') }}</div>
                <div class="card-body">
                    <form action="{{ Route('product.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label class="small mb-1" for="product_name">Product Name</label>
                            <input type="text" id="product_name" name="product_name" class="form-control @error('product_name') is-invalid @enderror" value="{{ old('product_name') }}" require autocomplete="product_name" autofocus>

                            @error('product_name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label class="small mb-1" for="price">Price</label>
                            <input type="text" id="price" name="price" class="form-control @error('price') is-invalid @enderror" value="{{ old('price') }}" require autocomplete="price" autofocus>

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
                            <label class="small mb-1" for="unit">Unit</label>
                            <input type="text" id="unit" name="unit" class="form-control @error('unit') is-invalid @enderror" value="{{ old('unit') }}" require autocomplete="unit" autofocus>

                            @error('unit')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">SAVE</button>
                            <a class="btn btn-secondary" href="{{ route('product.index') }}">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection