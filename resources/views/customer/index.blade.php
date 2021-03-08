@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Customer') }}</div>
                <div class="card-body">
                    <a class="btn btn-success" href="{{ Route('customer.create') }}">Add Customer Data</a>
                </div>
                <div class="card-body">
                    <table class="table table-stripped">
                        <tr>
                            <th>Customer ID</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($customer as $item)
                        <tr>
                            <td>{{ $item->id}}</td>
                            <td>{{ $item->name }}</td>
                            <td>{{ $item->address }}</td>
                            <td>{{ $item->phone }}</td>
                            <td>{{ $item->email }}</td>
                            <td>
                                <form action="{{ Route('customer.destroy', $item->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <a href="{{ Route('customer.edit', $item->id) }}" class="btn btn-warning">Edit</a>
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