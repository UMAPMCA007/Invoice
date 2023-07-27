{{-- <x-mail::message>
    Dear <h1> {{ $invoiceData['customer_name'] }}</h1><br>

            Your invoice has been Created !

            Invoice Date:{{$invoiceData['invoice_date']}}
            Tax Amount:{{$invoiceData['tax_amount']}}
            Invoice Amount:{{$invoiceData['invoice_amount']}}
            File:<a href="{{url('/invoice_download/'.$invoiceData['file'])}}">Download File</a>

        Thank you


Thanks,<br>
{{ config('app.name') }}
</x-mail::message> --}}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>Invoice</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h1>Invoice</h1><br>
                        <p>Dear {{ $invoiceData['customer_name'] }}</p>
                        <p>Your invoice has been Created !</p>
                        <p>Invoice Date:{{$invoiceData['invoice_date']}}</p>
                        <p>Tax Amount:{{$invoiceData['tax_amount']}}</p>
                        <p>Invoice Amount:{{$invoiceData['invoice_amount']}}</p>
                        <p>File:<a href="{{url('/invoice_download/'.$invoiceData['file'])}}">Download File</a><p>
                        <p>Thank you</p></div>
                  </div>

            </div>

    </div>
    <p>Invoice Team</p>
</body>
</html>
