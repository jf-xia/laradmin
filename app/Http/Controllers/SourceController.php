<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Source;
use GuzzleHttp\Client;
use Carbon\Carbon;

class SourceController extends Controller
{
    public function backup(Request $request) {
        $client = new Client();
        $req = $client->request('GET','https://newsapi.org/v1/sources', [
            'Accept'       => 'application/json',
            'Content-Type' => 'application/json',
        ]);

        $stream   = $req->getBody();
        $contents = json_decode($stream->getContents());
        $sources = collect($contents->sources);

        $sources->each(function ($source) {
            $ng_source = Source::updateOrCreate(['id' => $source->id],
            [
                'category'       => $source->category,
                'description'    => $source->description,
                'url'            => $source->url,
                'language'       => $source->language,
                'country'        => $source->country,
            ]);
        });

        $results = Source::all();

        return view('news',compact('results'));

    }

    public function index(Request $request) {
        $results = Source::all();
    
        return view('news',compact('results'));
    }
}
