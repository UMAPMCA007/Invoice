<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\InvoiceShipped;

class InvoiceController extends Controller
{
    public function index()
    {
        $invoices = \App\Models\Invoice::all();
        return view('dashboard', compact('invoices'));
    }

   public function storeInvoice(Request $request)
    {

        $request->validate([
            'qty' => 'required|numeric',
            'amount' => 'required|numeric',
            'tax' => 'required|numeric',
            'customer_name' => 'required|regex:/^[\pL\s\-]+$/u',
            'date' => 'required|date',
            'file' => 'required|mimes:pdf,jpg,png|max:3048',
            'email' => 'required|email',
        ]);

        $invoiceData=[];
        $total_amount = $request->qty * $request->amount;
        $net_amount = $total_amount + ($total_amount * $request->tax / 100);

        $file_name = time() . '.' . $request->file->extension();
        $request->file->move(public_path('files'), $file_name);

        $invoice = new \App\Models\Invoice();
        $invoice->qty = $request->qty;
        $invoice->amount = $request->amount;
        $invoice->total_amount = $total_amount;
        $invoice->tax = $request->tax;
        $invoice->tax_amount = $total_amount * $request->tax / 100;
        $invoice->net_amount = $net_amount;
        $invoice->customer_name = $request->customer_name;
        $invoice->email = $request->email;
        $invoice->date = $request->date;
        $invoice->file = $file_name;
        $invoice->save();

        $invoiceData=[
            'customer_name'=>$request->customer_name,
            'invoice_date'=>$request->date,
            'tax_amount'=>$request->tax_amount,
            'invoice_amount'=>$request->net_amount,
            'file'=>$invoice->id,
        ];

        Mail::to($request->email)->send(new InvoiceShipped($invoiceData));

        return redirect('/')->with('success', 'Invoice created successfully.');

    }

    public function edit($id)
    {
        $invoice = \App\Models\Invoice::find($id);
        return view('edit', compact('invoice'));
    }

    public function update(Request $request,$id)
    {
        $request->validate([
            'qty' => 'required|numeric',
            'amount' => 'required|numeric',
            'tax' => 'required|numeric',
            'customer_name' => 'required|alpha',
            'date' => 'required|date',
            'file' => 'mimes:pdf,jpg,png|max:3048',
            'email' => 'required|email',
        ]);

        $total_amount = $request->qty * $request->amount;
        $net_amount = $total_amount + ($total_amount * $request->tax / 100);

        $file_name = time() . '.' . $request->file->extension();
        $request->file->move(public_path('files'), $file_name);

        $invoice = \App\Models\Invoice::find($id);
        $invoice->qty = $request->qty;
        $invoice->amount = $request->amount;
        $invoice->total_amount = $total_amount;
        $invoice->tax = $request->tax;
        $invoice->tax_amount = $total_amount * $request->tax / 100;
        $invoice->net_amount = $net_amount;
        $invoice->customer_name = $request->customer_name;
        $invoice->email = $request->email;
        $invoice->date = $request->date;
        $invoice->file = $file_name;
        $invoice->save();

        return redirect('/dashboard')->with('success', 'Invoice updated successfully.');
    }

    public function destroy($id)
    {
        $invoice = \App\Models\Invoice::find($id);
        $invoice->delete();
        return redirect('/dashboard')->with('success', 'Invoice deleted successfully.');
    }

    public function download($id)
    {
        $invoice = \App\Models\Invoice::find($id);
        $file_path = public_path('files/' . $invoice->file);
        return response()->download($file_path);
    }


}
