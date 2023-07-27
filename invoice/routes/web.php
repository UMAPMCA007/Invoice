<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoiceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::post('/invoice_store', [InvoiceController::class, 'storeInvoice'])->name('invoice.store');
Route::get('/invoice_download/{id}', [InvoiceController::class, 'download'])->name('invoice.download');

Route::get('/dashboard', [InvoiceController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/invoice_edit/{id}', [InvoiceController::class, 'edit'])->name('invoice.edit');
    Route::put('/invoice_update/{id}', [InvoiceController::class, 'update'])->name('invoice.update');
    Route::get('/invoice_delete/{id}', [InvoiceController::class, 'destroy'])->name('invoice.destroy');

});

require __DIR__.'/auth.php';
