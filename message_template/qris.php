<?php
$replyToken = $_GET['replyToken'];
$image = base64_decode($_GET['image']);
//"replyToken": $replyToken,

$data = <<<EOF
{
  "replyToken": "$replyToken",
  "messages": [
    {
      "type": "flex",
      "altText": "QRIS",
      "contents": {
      "type": "bubble",
      "header": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "Dr Snake",
              "size": "md",
              "color": "#2CB7D4",
              "weight": "bold"
            }
          ]
        },
        "hero": {
          "type": "image",
          "url": "$image",
          "size": "full",
          "aspectRatio": "1:1",
          "aspectMode": "cover",
          "action": {
            "type": "uri",
            "uri": "$image"
          }
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [
            {
              "type": "text",
              "text": "QRIS",
              "weight": "bold",
              "size": "xl",
              "align": "center"
            },
            {
              "type": "text",
              "text": "Silahkan scan kode QR diatas menggunakan uang elektronik seperti OVO, DANA, Gopay, dan lain lain",
              "wrap": true,
              "margin": "xl"
            }
          ]
        },
        "footer": {
          "type": "box",
          "layout": "vertical",
          "spacing": "sm",
          "contents": [
            {
              "type": "button",
              "style": "link",
              "height": "sm",
              "action": {
                "type": "postback",
                "label": "Sudah Bayar",
                "data": "/sudahbayar"
              }
            },
            {
              "type": "button",
              "style": "link",
              "height": "sm",
              "action": {
                "type": "postback",
                "label": "Tidak Jadi",
                "data": "/tidakjadi"
              }
            },
            {
              "type": "spacer",
              "size": "sm"
            }
          ],
          "flex": 0
        }
      }
    }
  ]
}
EOF;
echo $data;
?>