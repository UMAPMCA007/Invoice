<!DOCTYPE html>
<html lang="en">
<head>
  <title>Invoice</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container ">
  <h2>INVOICE</h2>
  <form action="{{url('invoice_store')}}"  method="POST" class="col-md-7 offset-md-2" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
      <label for="">Qty:</label>
      <input type="number" class="form-control" id="qty" placeholder="Enter Qty" name="qty" >
      @error('qty')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Amount</label>
      <input type="number" class="form-control" id="amount" oninput="totalAmount()" placeholder="Enter Amount" name="amount">
      @error('amount')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Total Amount</label>
      <input type="number" class="form-control"  id="total_amount"   name="total_amount" readonly >

    </div>
    <div class="form-group">
      <label for="">Tax Percentage</label>
      <select class="form-control" id="tax"  name="tax">
        <option value="0">0</option>
        <option value="5">5</option>
        <option value="12">12</option>
        <option value="18">18</option>
        <option value="28">28</option>
      </select>
      @error('tax')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Net Amount</label>
      <input type="number" class="form-control"  id="net_amount"  name="net_amount" readonly >
      @error('net_amount')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Customer Name</label>
      <input type="text" class="form-control" name="customer_name" >
      @error('customer_name')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Date</label>
      <input type="date" class="form-control" name="date" >
      @error('date')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">File</label>
      <input type="file" class="form-control" name="file" >
      @error('file')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="">Customer email</label>
      <input type="email" class="form-control" name="email" >
      @error('email')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>

    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>


    function totalAmount(){
        var amount = $('#amount').val();
        var qty = $('#qty').val();
        var total_amount = amount * qty;
        $('#total_amount').val(total_amount);
    }

    $('#tax').on('change',function(){
        var total_amount = $('#total_amount').val();
        var tax = $('#tax').val();
        var tax_amount = (total_amount * tax) / 100;
        console.log(tax_amount);
        var net_amount = parseInt(total_amount)+parseInt(tax_amount);
        console.log(net_amount);
        $('#net_amount').val(net_amount);
    });

</script>
