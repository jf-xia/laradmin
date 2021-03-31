<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use TencentCloud\Common\Credential;
use TencentCloud\Common\Profile\ClientProfile;
use TencentCloud\Common\Profile\HttpProfile;
use TencentCloud\Common\Exception\TencentCloudSDKException;
use TencentCloud\Tmt\V20180321\TmtClient;
use TencentCloud\Tmt\V20180321\Models\TextTranslateRequest;

class TencentController
{
    public function textTranslate()
    {
        try {
        
            $cred = new Credential(env('TTT_SECRET_ID'), env('TTT_SECRET_KEY'));
            $httpProfile = new HttpProfile();
            $httpProfile->setEndpoint("tmt.tencentcloudapi.com");
              
            $clientProfile = new ClientProfile();
            $clientProfile->setHttpProfile($httpProfile);
            $client = new TmtClient($cred, "ap-hongkong", $clientProfile);
        
            $req = new TextTranslateRequest();
            
            $params = array(
                "SourceText" => request()->get('text'),
                "Source" => request()->get('source','auto'),
                "Target" => request()->get('target','zh'),
                "ProjectId" => 0
            );
            $req->fromJsonString(json_encode($params));
        
            $resp = $client->TextTranslate($req);
        
            return json_decode($resp->toJsonString(),true);
        }
        catch(TencentCloudSDKException $e) {
            Log::error(request()->all());
            Log::error($e);
            return ['code'=>500];
        }
        
    }
}
