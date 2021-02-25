<?php
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*ROUTING DEBUG */

Route::get('debug', 'DebugController@debug');

Route::post('debugsave', 'DebugController@debug');

Route::post('debugpostajax','DebugController@debugpostajax');

Route::get('debugajax','DebugController@debugajax');

Route::get('debuggetajax','DebugController@debuggetajax');

Route::get('clearsession',function(){
    Session::flush();
});

/*ROUTING ARTICLE MANAGEMENT*/

Route::get('postarticle', 'ArticleController@PostArticle')->name('postarticle');

Route::post('savearticle', 'ArticleController@SaveArticle');

Route::get('article', 'ArticleController@ReadArticle');

Route::get('editarticle', 'ArticleController@DisplayArticle');

Route::post('editarticle', 'ArticleController@EditArticle');

Route::get('deleteauthor/{IdArticle}/{IdAuthor}', 'ArticleController@DeleteAuthor');

Route::get('deleteparagraph/{IdArticle}/{IdParagraph}/{numberOfParagraph}', 'ArticleController@DeleteParagraph');

Route::get('statisticarticles','ArticleController@statisticArticles');

Route::get('articlefilter','ArticleController@articleFilter');

Route::get('censorarticle','ArticleController@censorArticle');

Route::post('censorArticle','ArticleController@confirmCensorArticle');

Route::get('/', 'ArticleController@HomeUser');

Route::get('/search','ArticleController@searchArticle');

Route::get('/category','ArticleController@categoryArticle');

/*ROUTING COMMENT MANAGEMENT*/

Route::post('/postcomment','CommentController@saveComment');

Route::get('/getcommentlastest','CommentController@getCommentLastest');

/*ROUTING AUTHENTIFICATION MANAGEMENT*/

Route::get('/admin/login','AuthentificationController@login')->name('login');

Route::post('/admin/login','AuthentificationController@confirmLogin');

Route::get('/admin/logout','AuthentificationController@logout');