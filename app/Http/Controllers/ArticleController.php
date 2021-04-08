<?php

namespace App\Http\Controllers;

use App\Article;
use App\Source;
use DB;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Carbon\Carbon;

class ArticleController extends Controller
{
    public function index(Request $request) {
        $client = new Client();
        $source = Source::orderBy(DB::raw('RAND()'))->take(1)->first();
        $req = $client->request('GET','https://newsapi.org/v1/articles', [
            'Accept'       => 'application/json',
            'Content-Type' => 'application/json',
            'query' => [
                
                'source'       => $source->id,
                'apiKey'       => '715d01f80aa545b78838e9a7b76b9807',
            ],
        ]);

        $stream   = $req->getBody();
        $contents = json_decode($stream->getContents());
        $articles = collect($contents->articles);

        $articles->each(function ($article) use ($source) {
            $Articles = Article::updateOrCreate(['url' => $article->url],
            [
                'source_id'      => $source->id,
                'author'         => $article->author,
                'title'          => $article->title,
                'description'    => $article->description,
                'url'            => $article->url,
                'urlToImage'     => $article->urlToImage,
                'publishedAt'    => Carbon::parse($article->publishedAt),
            ]);
        });
        
        $techs  = DB::table('Articles')->select("*")->join('sources','sources.id','=','Articles.source_id')
        ->where('sources.category','=','technology')
        ->take(8)
        ->inRandomOrder()
        ->get();

        $businesses = DB::table('Articles')->select("*")->join('sources','sources.id','=','Articles.source_id')
        ->where('sources.category','=','business')
        ->take(5)
        ->inRandomOrder()
        ->get();

        $insiders = Article::select("*")->where('source_id','=','business-insider-uk')->orderBy('id','desc')->take(8)->inRandomOrder()->get();
        $Articles = Article::where('source_id', $source->id)->take(6)->get();

        return view('news',compact('Articles','insiders','techs','businesses'));
    }

    public function show(Request $request) {
    
    }
}
