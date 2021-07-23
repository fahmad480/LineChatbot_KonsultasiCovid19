<?php
$con = mysqli_connect("localhost","","","");

$channelAccessToken = '';
$channelSecret = '';

$client = new LINEBotTiny($channelAccessToken, $channelSecret);

// Data Data Pengguna, Group, Room
$userId 	= $client->parseEvents()[0]['source']['userId'];
$groupId 	= $client->parseEvents()[0]['source']['groupId'];
$roomId 	= $client->parseEvents()[0]['source']['roomId'];
$replyToken = $client->parseEvents()[0]['replyToken'];
$timestamp	= $client->parseEvents()[0]['timestamp'];
$type 		= $client->parseEvents()[0]['type'];
$message 	= $client->parseEvents()[0]['message'];
$messageid 	= $client->parseEvents()[0]['message']['id'];
$profil     = $client->profil($userId);
$profileName 	= $profil->displayName;
$profileURL 	= $profil->pictureUrl;
$profielStatus 	= $profil->statusMessage;

// Jenis Pesan Postback
$datetime           = $client->parseEvents()[0]['postback']['params']['date'];
$postbackData 		= $client->parseEvents()[0]['postback']['data'];
$postbackPesan      = explode(" ", strtolower($postbackData));
$postbackPesans      = explode(" ", $postbackData);
$commandPostbacks    = $postbackPesans[0];
$optionsPostbacks    = $postbackPesans[1];
$commandPostback    = $postbackPesan[0];
$optionsPostback    = $postbackPesan[1];
if (count($postbackPesan) > 2) {
    for ($i = 2; $i < count($postbackPesan); $i++) {
        $optionsPostback .= '+';
        $optionsPostback .= $postbackPesan[$i];
    }
}

// Jenis Pesan Teks
$commandSingle = strtolower($message['text']);
$pesan_datang = explode(" ", $commandSingle);
$command = $pesan_datang[0];
$options = $pesan_datang[1];
if (count($pesan_datang) > 2) {
    for ($i = 2; $i < count($pesan_datang); $i++) {
        $options .= '+';
        $options .= $pesan_datang[$i];
    }
}
