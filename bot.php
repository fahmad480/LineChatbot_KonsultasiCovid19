<?php
require_once('./class.php');
require_once('./data.php');

// Data di Database Mysql
$cekData = mysqli_query($con, "SELECT * FROM proses WHERE userid='$userId'");
$rowData = mysqli_fetch_array($cekData);
$cekPercakapan = mysqli_query($con, "SELECT * FROM percakapan WHERE userid_pasien='$userId' OR userid_dokter='$userId'");
$rowPercakapan = mysqli_fetch_array($cekPercakapan);
$tanggalSekarang = date("Y-m-d");

/*
help
cari rumah sakit terdekat (SUDAH)
cari apotik terdekat
komunikasi dengan dokter (SUDAH)
cek penyakit (SUDAH)
beli obat (SUDAH)

*/

/*
List error code :
x0001 : gagal insert cari rumah sakit terdekat 
x0002 : gagal insert cari apotik terdekat
x0003 : gagal insert konsultasi dengan dokter
x0004 : gagal insert cek penyakit
x0005 : gagal update status dokter saat ingin dihubungkan dengan pasien
x0006 : gagal insert data percakapan dokter dan pasien ke database
x0007 : gagal mencari dokter berdasarkan spesialis dan statusnya
x0008 : gagal mencari id spesialis berdasarkan nama
x0009 : gagal insert beli obat
x0010 : gagal menemukan obat berdasarkan sakit
x0011 : gagal menemukan obat berdasarkan nama obat
x0012 : gagal postback /loct karena parameter tidak masuk
x0013 : gagal postback /beliobat karena parameter tidak masuk
x0014 : gagal postback /yabeliobat karena parameter tidak masuk
x0015 : gagal karena tidak ada data1 ( id obat ) saat ingin memilih metode pembayaran
x0016 : gagal karena tidak ada data1 ( id obat ) saat ingin memilih metode pembayaran
x0017 : metode pembayaran tidak ditemukan
*/

// Gabung grub
// if($type == 'join') {
//     $responses['replyToken'] = $replyToken;
//     $responses['messages'][0]['type'] = "text";
//     $responses['messages'][0]['text'] = "Hai Semua, kapan lagi coba rebahan bisa nyelametin negeri?\n\nPerkenalkan, aku chatbot yang dirancang untuk memberikan informasi mengenai pandemik covid19 di Indonesia\n\nUntuk menggunakan bot ini, kamu bisa ketik kata kunci /help untuk mendapatkan informasi cara penggunaan bot ini\n\nAtau kalau kamu pengen nanya nanya sesuatu, bisa melalui private chat bot ini\n\nMakasih";
//     $result = json_encode($responses);
//     $result_json = json_decode($result, TRUE);
//     $client->replyMessage($result_json);
// }

// Ada yang add bot
// if($type == 'follow') {
//     $responses['to'] = "U4b75eb304c5d79e3993b34771472c048";
//     $responses['messages'][0]['type'] = "text";
//     $responses['messages'][0]['text'] = $profileName." telah menambahkan bot sebagai temannya";
//     $result = json_encode($responses);
//     $result_json = json_decode($result, TRUE);
//     $client->pushMessage($result_json);
// }

if($commandSingle == "reset") {
    if(mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'")) {
        $responses['replyToken'] = $replyToken;
        $responses['messages'][0]['type'] = "text";
        $responses['messages'][0]['text'] = "Berhasil direset";
        $result = json_encode($responses);
        $result_json = json_decode($result, TRUE);
        $client->replyMessage($result_json);
    } else {
        $responses['replyToken'] = $replyToken;
        $responses['messages'][0]['type'] = "text";
        $responses['messages'][0]['text'] = "Gagal direset";
        $result = json_encode($responses);
        $result_json = json_decode($result, TRUE);
        $client->replyMessage($result_json);
    }
}

if($message['type'] == 'text' && mysqli_num_rows($cekData) == 0 && mysqli_num_rows($cekPercakapan) == 0) {
    if($commandSingle == "help") {
        $r['replyToken'] = $replyToken;
        $r['messages'][0]['type'] = "text";
        $r['messages'][0]['text'] = <<<EOF
Berikut ini adalah kata kunci yang bisa digunakan:

- cari rumah sakit terdekat
- cari apotek terdekat
- beli obat
- konsultasi dengan dokter
- cek penyakit
EOF;
        $result = json_encode($r, JSON_PRETTY_PRINT);
        $result_json = json_decode($result, TRUE);
        $client->replyMessage($result_json);
    }
    if($commandSingle == "userid") {
        $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = $userId;
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    } else if($commandSingle == "cari rumah sakit terdekat") {
            $responses['replyToken'] = $replyToken;
        if(mysqli_query($con,"INSERT INTO proses (userid, status) VALUES('$userId','carirs1')")) {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Coba kirim lokasi kamu biar bisa aku bantu cek rumah sakit terdekat di lokasi kamu";
        } else {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya\n\nError Code: x0001";
        }
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    } else if($commandSingle == "cari apotek terdekat") {
            $responses['replyToken'] = $replyToken;
        if(mysqli_query($con,"INSERT INTO proses (userid, status) VALUES('$userId','cariap1')")) {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Coba kirim lokasi kamu biar bisa aku bantu cek apotik terdekat di lokasi kamu";
        } else {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya\n\nError Code: x0002";
        }
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    } else if($commandSingle == "konsultasi dengan dokter") {
            $responses['replyToken'] = $replyToken;
        if(mysqli_query($con,"INSERT INTO proses (userid, status) VALUES('$userId','caridokter1')")) {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Ingin bertemu dokter spesialis apa?";
            
            $findDokter = mysqli_query($con,"SELECT * FROM spesialis");
            while($row = mysqli_fetch_array($findDokter)) {
                $r .= $row['nama']."\n";
            }
            
            $responses['messages'][1]['type'] = "text";
            $responses['messages'][1]['text'] = "Daftar dokter spesialis tersedia : \n\n$r\n\nSilahkan dipilih salah satu";
        } else {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya\n\nError Code: x0003";
        }
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    } else if($commandSingle == "cek penyakit") {
            $responses['replyToken'] = $replyToken;
        if(mysqli_query($con,"INSERT INTO proses (userid, status) VALUES('$userId','cekpnykt1')")) {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Apa saja gejala yang kamu alami selama ini? (kirim satu per satu)";
        } else {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya\n\nError Code: x0004";
        }
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    } else if($commandSingle == "beli obat") {
            $responses['replyToken'] = $replyToken;
        if(mysqli_query($con,"INSERT INTO proses (userid, status) VALUES('$userId','obat1')")) {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Pengen beli obat apa nih? atau bisa kamu sebutin penyakit kamu biar aku bisa tahu obat yang cocok";
        } else {
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya\n\nError Code: x0009";
        }
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
    }
}

if(mysqli_num_rows($cekData) === 1) {
    if($message['type'] == 'text') {
        if($rowData['status'] == 'caridokter1') {
            $findId = mysqli_query($con, "SELECT * FROM spesialis WHERE nama = '$commandSingle' LIMIT 1");
            if(mysqli_num_rows($findId) == 1) {
                $dataId = mysqli_fetch_array($findId);
                $findDokter = mysqli_query($con, "SELECT * FROM dokter WHERE spesialis='$dataId[id]' AND status='on' ORDER BY RAND() LIMIT 1");
                if(mysqli_num_rows($findDokter) == 1) {
                    $dataDokter = mysqli_fetch_array($findDokter);
                    $userIdDokter = $dataDokter['userid'];
                    $namaDokter = $dataDokter['nama'];
                    $spesialisDokter = $dataId['nama'];
                    if(mysqli_query($con,"INSERT INTO percakapan(userid_dokter,userid_pasien) VALUES('$userIdDokter','$userId')")) {
                        if(mysqli_query($con,"UPDATE dokter SET status='inc' WHERE userid='$userIdDokter'")) {
                            mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
                            
                            $responses['replyToken'] = $replyToken;
                            $responses['messages'][0]['type'] = "text";
                            $responses['messages'][0]['text'] = "Aku berhasil hubungin kamu sama dokter $namaDokter spesialis $spesialisDokter, kamu bisa langsung memulai percakapan dengannya";
                            $result = json_encode($responses);
                            $result_json = json_decode($result, TRUE);
                            $client->replyMessage($result_json);
                            
                            $responses['to'] = $userIdDokter;
                            $responses['messages'][0]['type'] = "text";
                            $responses['messages'][0]['text'] = "Halo dok, ada pasien bernama $profileName ingin bicara dengan dokter, aku langsung sambungin dengannya ya";
                            $result = json_encode($responses);
                            $result_json = json_decode($result, TRUE);
                            $client->pushMessage($result_json);
                        } else {
                            sendMaintenanceMessage($replyToken, 'x0005', $con, $userId, $client);
                        }
                    } else {
                        sendMaintenanceMessage($replyToken, 'x0006', $con, $userId, $client);
                    }
                } else {
                    sendMaintenanceMessage($replyToken, 'x0007', $con, $userId, $client);
                }
            } else {
                mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
                    
                $responses['replyToken'] = $replyToken;
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = "Sepertinya dokter spesialis yang kamu ingin sedang sibuk semua, silahkan dicoba lagi nanti ya\n\nError Code: x0008";
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->replyMessage($result_json);
            }
        } else if($rowData['status'] == 'obat1') {
            $cekObat = mysqli_query($con, "SELECT * FROM obat WHERE nama LIKE '%$commandSingle%' LIMIT 10");
            $cekPenyakit = mysqli_query($con, "SELECT * FROM penyakit WHERE nama LIKE '%$commandSingle%' LIMIT 1");
            if(mysqli_num_rows($cekObat) >= 1) {
                // $dataObat = mysqli_fetch_array($cekObat);
                
                mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
                $i = 0;
                
                $r['replyToken'] = $replyToken;
                $r['messages'][0]['type'] = "flex";
                $r['messages'][0]['altText'] = "Daftar Obat";
                $r['messages'][0]['contents']['type'] = "carousel";
                while($row = mysqli_fetch_array($cekObat)) {
                    $r['messages'][0]['contents']['contents'][$i]['type'] = "bubble";
                    $r['messages'][0]['contents']['contents'][$i]['header']['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['header']['layout'] = "vertical";
                    $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['type'] = "text";
                    $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['text'] = "Dr Snake";
                    $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['weight'] = "bold";
                    $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['color'] = "#2CB7D4";
                    $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['size'] = "md";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['type'] = "image";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['url'] = $row['img'];
                    $r['messages'][0]['contents']['contents'][$i]['hero']['size'] = "full";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['aspectRatio'] = "1:1";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['aspectMode'] = "cover";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['action']['type'] = "uri";
                    $r['messages'][0]['contents']['contents'][$i]['hero']['action']['uri'] = "https://www.itenas.ac.id/";
                    $r['messages'][0]['contents']['contents'][$i]['body']['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['body']['layout'] = "vertical";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['layout'] = "vertical";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['margin'] = "lg";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['spacing'] = "sm";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['layout'] = "baseline";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['spacing'] = "sm";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['type'] = "text";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['text'] = $row['nama'];
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['wrap'] = true;
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['color'] = "#666666";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['size'] = "sm";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['weight'] = "bold";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['flex'] = 5;
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['layout'] = "baseline";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['spacing'] = "sm";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['type'] = "text";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['text'] = $row['keterangan']."\n\nHarga: ".$row['harga'];
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['wrap'] = true;
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['color'] = "#666666";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['size'] = "sm";
                    $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['flex'] = 5;
                    $r['messages'][0]['contents']['contents'][$i]['footer']['type'] = "box";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['layout'] = "horizontal";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['type'] = "button";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['style'] = "primary";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['type'] = "postback";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['label'] = "Beli Obat";
                    $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['data'] = "/beliobat ".$row['id'];
                    $i++;
                }
                $result = json_encode($r, JSON_PRETTY_PRINT);
                $result_json = json_decode($result, TRUE);
            	$client->replyMessage($result_json);
                
            } else if(mysqli_num_rows($cekPenyakit) == 1) {
                $dataPenyakit = mysqli_fetch_array($cekPenyakit);
                $cekObat = mysqli_query($con, "SELECT * FROM obat WHERE sakit1 LIKE '%$dataPenyakit[id]%' OR sakit2 LIKE '%$dataPenyakit[id]%' OR sakit3 LIKE '%$dataPenyakit[id]%' OR sakit4 LIKE '%$dataPenyakit[id]%' OR sakit5 LIKE '%$dataPenyakit[id]%' OR sakit6 LIKE '%$dataPenyakit[id]%' OR sakit7 LIKE '%$dataPenyakit[id]%' LIMIT 10");
                if(mysqli_num_rows($cekObat) >= 1) {
                    // $dataObat = mysqli_fetch_array($cekObat);
                    
                    mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
                    $i = 0;
                
                    $r['replyToken'] = $replyToken;
                    $r['messages'][0]['type'] = "flex";
                    $r['messages'][0]['altText'] = "Daftar Obat";
                    $r['messages'][0]['contents']['type'] = "carousel";
                    while($row = mysqli_fetch_array($cekObat)) {
                        #Deklarasi variabel khusus
                        $image = isset($row['img']) ? $row['img'] : "https://thumbs.dreamstime.com/b/no-image-available-icon-vector-illustration-flat-design-140476186.jpg";
                        
                        
                        $r['messages'][0]['contents']['contents'][$i]['type'] = "bubble";
                        $r['messages'][0]['contents']['contents'][$i]['header']['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['header']['layout'] = "vertical";
                        $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['type'] = "text";
                        $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['text'] = "Dr Snake";
                        $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['weight'] = "bold";
                        $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['color'] = "#2CB7D4";
                        $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['size'] = "md";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['type'] = "image";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['url'] = $image;
                        $r['messages'][0]['contents']['contents'][$i]['hero']['size'] = "full";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['aspectRatio'] = "1:1";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['aspectMode'] = "cover";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['action']['type'] = "uri";
                        $r['messages'][0]['contents']['contents'][$i]['hero']['action']['uri'] = "https://www.itenas.ac.id/";
                        $r['messages'][0]['contents']['contents'][$i]['body']['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['body']['layout'] = "vertical";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['layout'] = "vertical";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['margin'] = "lg";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['spacing'] = "sm";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['layout'] = "baseline";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['spacing'] = "sm";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['type'] = "text";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['text'] = $row['nama'];
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['wrap'] = true;
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['color'] = "#666666";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['size'] = "sm";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['weight'] = "bold";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['flex'] = 5;
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['layout'] = "baseline";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['spacing'] = "sm";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['type'] = "text";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['text'] = $row['keterangan']."\n\nHarga: ".$row['harga'];
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['wrap'] = true;
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['color'] = "#666666";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['size'] = "sm";
                        $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['flex'] = 5;
                        $r['messages'][0]['contents']['contents'][$i]['footer']['type'] = "box";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['layout'] = "horizontal";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['type'] = "button";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['style'] = "primary";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['type'] = "postback";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['label'] = "Beli Obat";
                        $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['data'] = "/beliobat ".$row['id'];
                        $i++;
                    }
                    $result = json_encode($r, JSON_PRETTY_PRINT);
                    // file_put_contents('udin.txt', $result);
                    $result_json = json_decode($result, TRUE);
                	$client->replyMessage($result_json);
                    
                } else {
                    sendMaintenanceMessage($replyToken, 'x0010', $con, $userId, $client, 'Maaf, sepertinya obat yang kamu inginkan gk ada');
                }
            } else {
                sendMaintenanceMessage($replyToken, 'x0011', $con, $userId, $client, 'Maaf, sepertinya obat yang kamu inginkan gk ada');
            }
        } else if($rowData['status'] == "beliobat1") {
            if(mysqli_query($con,"UPDATE proses SET data2='$commandSingle', status='beliobat2' WHERE userid='$userId'")) {
                $responses['replyToken'] = $replyToken;
                $responses['messages'][0]['type'] = "template";
                $responses['messages'][0]['altText'] = "Konfirmasi metode pengiriman obat";
                $responses['messages'][0]['template']['type'] = "buttons";
                $responses['messages'][0]['template']['thumbnailImageUrl'] = NULL;
                $responses['messages'][0]['template']['imageBackgroundColor'] = "#FFFFFF";
                $responses['messages'][0]['template']['title'] = NULL;
                $responses['messages'][0]['template']['text'] = "Ingin ambil sendiri atau dianterin gojek?";
                $responses['messages'][0]['template']['actions'][0]['type'] = "postback";
                $responses['messages'][0]['template']['actions'][0]['label'] = "Ambil Sendiri";
                $responses['messages'][0]['template']['actions'][0]['data'] = "/yabeliobatambil";
                $responses['messages'][0]['template']['actions'][1]['type'] = "postback";
                $responses['messages'][0]['template']['actions'][1]['label'] = "Dikirim Gojek";
                $responses['messages'][0]['template']['actions'][1]['data'] = "/yabeliobatkirim $optionsPostback";
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
        	    $client->replyMessage($result_json);
            } else {
                sendMaintenanceMessage($replyToken, 'x0021', $con, $userId, $client, 'Gagal melakukan pembelian obat, silahkan coba lagi');
            }
        } else if($rowData['status'] == "cekpnykt1") {
            $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
            $data = mysqli_fetch_array($cari);
            if(mysqli_num_rows($cari) == 1) {
                if(mysqli_query($con,"UPDATE proses SET data1='$data[id]', status='cekpnykt2' WHERE userid='$userId'")) {
                    $responses['replyToken'] = $replyToken;
                    $responses['messages'][0]['type'] = "text";
                    $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                    $result = json_encode($responses);
                    $result_json = json_decode($result, TRUE);
            	    $client->replyMessage($result_json);
                }
            }
            
        } else if($rowData['status'] == "cekpnykt2") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data2='$data[id]', status='cekpnykt3' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt3") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data3='$data[id]', status='cekpnykt4' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt4") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data4='$data[id]', status='cekpnykt5' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt5") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data5='$data[id]', status='cekpnykt6' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt6") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data6='$data[id]', status='cekpnykt7' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt7") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data7='$data[id]', status='cekpnykt8' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt8") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data8='$data[id]', status='cekpnykt9' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt9") {
            if($commandSingle == "sudah") {
                sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
            } else {
                $cari = mysqli_query($con,"SELECT * FROM gejala WHERE nama LIKE '%$commandSingle%' LIMIT 1");
                $data = mysqli_fetch_array($cari);
                if(mysqli_num_rows($cari) == 1) {
                    if(mysqli_query($con,"UPDATE proses SET data9='$data[id]', status='cekpnykt10' WHERE userid='$userId'")) {
                        $responses['replyToken'] = $replyToken;
                        $responses['messages'][0]['type'] = "text";
                        $responses['messages'][0]['text'] = "Ada lagi gejala lain? jika tidak ada ketik \"sudah\"";
                        $result = json_encode($responses);
                        $result_json = json_decode($result, TRUE);
                	    $client->replyMessage($result_json);
                    }
                }
            }
        } else if($rowData['status'] == "cekpnykt10") {
            sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId);
        }
    }
    if ($message['type']=='location') {
        $lat = $message['latitude'];
        $long = $message['longitude'];
        if($rowData['status'] == 'carirs1') {
            mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
            
            $i = 0;
            $distance = 100;
            $query = <<<EOF
SELECT *, (6371 * 2 * ASIN(SQRT( POWER(SIN(( $lat - latitude) *  pi()/180 / 2), 2) +COS( $lat * pi()/180) * COS(latitude * pi()/180) * POWER(SIN(( $long - longitude) * pi()/180 / 2), 2) ))) as distance from rumahsakit having distance <= 100 order by distance LIMIT 10
EOF;
            $resultRS = mysqli_query($con,$query);
            
            $r['replyToken'] = $replyToken;
            $r['messages'][0]['type'] = "flex";
            $r['messages'][0]['altText'] = "Rumah sakit terdekat di lokasimu";
            $r['messages'][0]['contents']['type'] = "carousel";
            while($row = mysqli_fetch_array($resultRS)) {
                $r['messages'][0]['contents']['contents'][$i]['type'] = "bubble";
                $r['messages'][0]['contents']['contents'][$i]['header']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['header']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['text'] = "Dr Snake";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['color'] = "#2CB7D4";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['size'] = "md";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['type'] = "image";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['url'] = $row['img'];
                //$r['messages'][0]['contents']['contents'][$i]['hero']['size'] = "full";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectRatio'] = "1:1";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectMode'] = "cover";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['type'] = "uri";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['uri'] = $row['img'];
                $r['messages'][0]['contents']['contents'][$i]['body']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['margin'] = "lg";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['text'] = $row['nama'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['text'] = $row['keterangan']."\n\n".$row['provinsi']."\n".$row['alamat']."\n".$row['telepon'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['footer']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['footer']['layout'] = "horizontal";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['type'] = "button";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['style'] = "primary";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['type'] = "postback";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['label'] = "Lihat di Peta";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['data'] = "/loct ".$row['latitude'].",".$row['longitude'];
                $i++;
            }
            $result = json_encode($r, JSON_PRETTY_PRINT);
            $result_json = json_decode($result, TRUE);
        	$client->replyMessage($result_json);
        } else if($rowData['status'] == 'cariap1') {
            mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
            
            $i = 0;
            $distance = 100;
            $query = <<<EOF
SELECT *, (6371 * 2 * ASIN(SQRT( POWER(SIN(( $lat - latitude) *  pi()/180 / 2), 2) +COS( $lat * pi()/180) * COS(latitude * pi()/180) * POWER(SIN(( $long - longitude) * pi()/180 / 2), 2) ))) as distance from apotek having distance <= 100 order by distance LIMIT 10
EOF;
            $resultRS = mysqli_query($con,$query);
            
            $r['replyToken'] = $replyToken;
            $r['messages'][0]['type'] = "flex";
            $r['messages'][0]['altText'] = "Apotek terdekat di lokasimu";
            $r['messages'][0]['contents']['type'] = "carousel";
            while($row = mysqli_fetch_array($resultRS)) {
                $r['messages'][0]['contents']['contents'][$i]['type'] = "bubble";
                $r['messages'][0]['contents']['contents'][$i]['header']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['header']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['text'] = "Dr Snake";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['color'] = "#2CB7D4";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['size'] = "md";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['type'] = "image";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['url'] = $row['img'];
                //$r['messages'][0]['contents']['contents'][$i]['hero']['size'] = "full";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectRatio'] = "1:1";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectMode'] = "cover";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['type'] = "uri";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['uri'] = $row['img'];
                $r['messages'][0]['contents']['contents'][$i]['body']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['margin'] = "lg";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['text'] = $row['nama'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['text'] = $row['provinsi']."\n".$row['alamat']."\n".$row['telepon'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['footer']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['footer']['layout'] = "horizontal";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['type'] = "button";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['style'] = "primary";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['type'] = "postback";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['label'] = "Lihat di Peta";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['data'] = "/loct ".$row['latitude'].",".$row['longitude'];
                $i++;
            }
            $result = json_encode($r, JSON_PRETTY_PRINT);
            $result_json = json_decode($result, TRUE);
        	$client->replyMessage($result_json);
        }
    }
    
}

if(mysqli_num_rows($cekPercakapan) == 1) {
    if($message['type'] == 'text') {
        if($commandSingle == "akhiri percakapan") {
            mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
            mysqli_query($con,"UPDATE dokter SET status='on' WHERE userid='$rowPercakapan[userid_dokter]'");
            mysqli_query($con,"DELETE FROM percakapan WHERE userid_pasien='$userId' or userid_doker=''$userId");
            
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "OK, percakapan kamu telah selesai, terima kasih telah menghubungi dokter dokter kami";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
            
            if($rowPercakapan['userid_dokter'] == $userId) {
                $responses['to'] = $rowPercakapan['userid_pasien'];
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = "Dr. ".$profileName." mengakhiri percakapan";
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->pushMessage($result_json);
            }
            if($rowPercakapan['userid_pasien'] == $userId) {
                $responses['to'] = $rowPercakapan['userid_dokter'];
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = $profileName." mengakhiri percakapan";
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->pushMessage($result_json);
            }
        } else {
            if($rowPercakapan['userid_dokter'] == $userId) {
                $responses['to'] = $rowPercakapan['userid_pasien'];
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = "Dr. ".$profileName.":\n\n".$commandSingle;
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->pushMessage($result_json);
            }
            if($rowPercakapan['userid_pasien'] == $userId) {
                $responses['to'] = $rowPercakapan['userid_dokter'];
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = $profileName.":\n\n".$commandSingle;
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->pushMessage($result_json);
            }
        }
    }
}

// // pesan aktif di grup / private
// if($message['type']=='text' && mysqli_num_rows($cekProses) == 0) {
// 	if($commandSingle == "a") {
//         $responses['replyToken'] = $replyToken;
//         $responses['messages'][0]['type'] = "text";
//         $responses['messages'][0]['text'] = "hello world";
//         $result = json_encode($responses);
//         $result_json = json_decode($result, TRUE);
//         $client->replyMessage($result_json);
//     }
// }

// if($message['type']=='text' && mysqli_num_rows($cekProses) == 1) {
//     if($dataProses['status'] == "feedback1") {
//         mysqli_query($con,"UPDATE proses SET data1='$commandSingle', status='feedback2' WHERE userid='$userId'");
//         $responses['replyToken'] = $replyToken;
//         $responses['messages'][0]['type'] = "text";
//         $responses['messages'][0]['text'] = "OK! boleh gk aku minta kontak kamu jika suatu saat developer aku mau hubungi kamu? kalau gk mau bisa balas dengan \"tidak\" atau yang lainnya ^_^, kalau gk jadi kamu bisa ketik /reset";
//         $result = json_encode($responses);
//         $result_json = json_decode($result, TRUE);
//         $client->replyMessage($result_json);
//     }
// }

// // pesan gambar
// if($message['type']=='image') {
    
// }

// // kumpulan function
function sendMaintenanceMessage($replyToken, $code, $con, $userId, $client, $message = 'Sepertinya server aku lagi maintenance, silahkan dicoba lagi nanti ya') {
    mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'");
                    
    $responses['replyToken'] = $replyToken;
    $responses['messages'][0]['type'] = "text";
    $responses['messages'][0]['text'] = $message."\n\nError Code: ".$code;
    $result = json_encode($responses);
    $result_json = json_decode($result, TRUE);
    $client->replyMessage($result_json);
}

function sendPaymentMethode($replyToken, $client, $profileName, $metode) {
    $nomorVa = rand(111111111111,999999999999);
    
    $responses['replyToken'] = $replyToken;
    $responses['messages'][0]['type'] = "text";
    $responses['messages'][0]['text'] = "Silahkan lakukan transfer ke $metode dibawah ini\n\nVA: $nomorVa\na/n: $profileName\n\nTata Cara Pembayaran:\n-Pembayaran\n-Multipayment\n-DrSnake\n-Masukan Nomor VA\n-Cek keterangan transaksi\n-Masukan pin";
    $responses['messages'][1]['type'] = "template";
    $responses['messages'][1]['altText'] = "Konfirmasi pembayaran menggunakan $metode";
    $responses['messages'][1]['template']['type'] = "buttons";
    $responses['messages'][1]['template']['thumbnailImageUrl'] = NULL;
    $responses['messages'][1]['template']['imageBackgroundColor'] = "#FFFFFF";
    $responses['messages'][1]['template']['title'] = NULL;
    $responses['messages'][1]['template']['text'] = "Apakah anda sudah membayar?";
    $responses['messages'][1]['template']['actions'][0]['type'] = "postback";
    $responses['messages'][1]['template']['actions'][0]['label'] = "Sudah Bayar";
    $responses['messages'][1]['template']['actions'][0]['data'] = "/sudahbayar";
    $responses['messages'][1]['template']['actions'][1]['type'] = "postback";
    $responses['messages'][1]['template']['actions'][1]['label'] = "Tidak Jadi";
    $responses['messages'][1]['template']['actions'][1]['data'] = "/tidakjadi";
    $result = json_encode($responses);
    $result_json = json_decode($result, TRUE);
    $client->replyMessage($result_json);
}

function sudahCekPenyakit($replyToken, $client, $con, $rowData, $userId) {
    if(mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'")) {
        $q = "SELECT * FROM penyakit WHERE
        gejala1='$rowData[data1]' OR gejala2='$rowData[data1]' OR gejala3='$rowData[data1]' OR gejala4='$rowData[data1]' OR gejala5='$rowData[data1]' OR gejala6='$rowData[data1]' OR gejala7='$rowData[data1]' OR gejala8='$rowData[data1]' OR gejala9='$rowData[data1]' OR gejala10='$rowData[data1]' AND 
        gejala1='$rowData[data2]' OR gejala2='$rowData[data2]' OR gejala3='$rowData[data2]' OR gejala4='$rowData[data2]' OR gejala5='$rowData[data2]' OR gejala6='$rowData[data2]' OR gejala7='$rowData[data2]' OR gejala8='$rowData[data2]' OR gejala9='$rowData[data2]' OR gejala10='$rowData[data2]' AND
        gejala1='$rowData[data3]' OR gejala2='$rowData[data3]' OR gejala3='$rowData[data3]' OR gejala4='$rowData[data3]' OR gejala5='$rowData[data3]' OR gejala6='$rowData[data3]' OR gejala7='$rowData[data3]' OR gejala8='$rowData[data3]' OR gejala9='$rowData[data3]' OR gejala10='$rowData[data3]' AND
        gejala1='$rowData[data4]' OR gejala2='$rowData[data4]' OR gejala3='$rowData[data4]' OR gejala4='$rowData[data4]' OR gejala5='$rowData[data4]' OR gejala6='$rowData[data4]' OR gejala7='$rowData[data4]' OR gejala8='$rowData[data4]' OR gejala9='$rowData[data4]' OR gejala10='$rowData[data4]' AND
        gejala1='$rowData[data5]' OR gejala2='$rowData[data5]' OR gejala3='$rowData[data5]' OR gejala4='$rowData[data5]' OR gejala5='$rowData[data5]' OR gejala6='$rowData[data5]' OR gejala7='$rowData[data5]' OR gejala8='$rowData[data5]' OR gejala9='$rowData[data5]' OR gejala10='$rowData[data5]' AND
        gejala1='$rowData[data6]' OR gejala2='$rowData[data6]' OR gejala3='$rowData[data6]' OR gejala4='$rowData[data6]' OR gejala5='$rowData[data6]' OR gejala6='$rowData[data6]' OR gejala7='$rowData[data6]' OR gejala8='$rowData[data6]' OR gejala9='$rowData[data6]' OR gejala10='$rowData[data6]' AND
        gejala1='$rowData[data7]' OR gejala2='$rowData[data7]' OR gejala3='$rowData[data7]' OR gejala4='$rowData[data7]' OR gejala5='$rowData[data7]' OR gejala6='$rowData[data7]' OR gejala7='$rowData[data7]' OR gejala8='$rowData[data7]' OR gejala9='$rowData[data7]' OR gejala10='$rowData[data7]' AND
        gejala1='$rowData[data8]' OR gejala2='$rowData[data8]' OR gejala3='$rowData[data8]' OR gejala4='$rowData[data8]' OR gejala5='$rowData[data8]' OR gejala6='$rowData[data8]' OR gejala7='$rowData[data8]' OR gejala8='$rowData[data8]' OR gejala9='$rowData[data8]' OR gejala10='$rowData[data8]' AND
        gejala1='$rowData[data9]' OR gejala2='$rowData[data9]' OR gejala3='$rowData[data9]' OR gejala4='$rowData[data9]' OR gejala5='$rowData[data9]' OR gejala6='$rowData[data9]' OR gejala7='$rowData[data9]' OR gejala8='$rowData[data9]' OR gejala9='$rowData[data9]' OR gejala10='$rowData[data9]' AND
        gejala1='$rowData[data10]' OR gejala2='$rowData[data10]' OR gejala3='$rowData[data10]' OR gejala4='$rowData[data10]' OR gejala5='$rowData[data10]' OR gejala6='$rowData[data10]' OR gejala7='$rowData[data10]' OR gejala8='$rowData[data10]' OR gejala9='$rowData[data10]' OR gejala10='$rowData[data10]'";
        // file_put_contents('q', $q);
        $cek = mysqli_query($con, $q);
        
        if(mysqli_num_rows($cek) >= 1) {
            $i = 0;
            $r['replyToken'] = $replyToken;
            $r['messages'][0]['type'] = "flex";
            $r['messages'][0]['altText'] = "Daftar penyakit berdasarkan gejala yang kamu alami";
            $r['messages'][0]['contents']['type'] = "carousel";
            while($row = mysqli_fetch_array($cek)) {
                $r['messages'][0]['contents']['contents'][$i]['type'] = "bubble";
                $r['messages'][0]['contents']['contents'][$i]['header']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['header']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['text'] = "Dr Snake";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['color'] = "#2CB7D4";
                $r['messages'][0]['contents']['contents'][$i]['header']['contents'][0]['size'] = "md";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['type'] = "image";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['url'] = $row['img'];
                //$r['messages'][0]['contents']['contents'][$i]['hero']['size'] = "full";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectRatio'] = "1:1";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['aspectMode'] = "cover";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['type'] = "uri";
                //$r['messages'][0]['contents']['contents'][$i]['hero']['action']['uri'] = $row['img'];
                $r['messages'][0]['contents']['contents'][$i]['body']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['layout'] = "vertical";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['margin'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['text'] = $row['nama'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['weight'] = "bold";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][0]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['layout'] = "baseline";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['spacing'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['type'] = "text";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['text'] = $row['keterangan'];
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['wrap'] = true;
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['color'] = "#666666";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['size'] = "sm";
                $r['messages'][0]['contents']['contents'][$i]['body']['contents'][0]['contents'][1]['contents'][0]['flex'] = 5;
                $r['messages'][0]['contents']['contents'][$i]['footer']['type'] = "box";
                $r['messages'][0]['contents']['contents'][$i]['footer']['layout'] = "horizontal";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['type'] = "button";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['style'] = "primary";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['type'] = "message";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['label'] = "Cari Obat";
                $r['messages'][0]['contents']['contents'][$i]['footer']['contents'][0]['action']['text'] = "beli obat";
                $i++;
            }
            $result = json_encode($r, JSON_PRETTY_PRINT);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0023', $con, $userId, $client, "Gagal menemukan penyakit yang cocok dengan gejala yang kamu alami");
        }
    } else {
        sendMaintenanceMessage($replyToken, 'x0022', $con, $userId, $client, "Gagal menemukan penyakit yang cocok dengan gejala yang kamu alami");
    }
        
}

// pesan postback
if($type == 'postback') {
    if($commandPostback == '/loct') {
        $explode = explode(",", $optionsPostback);
    	if($optionsPostback) {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "location";
            $responses['messages'][0]['title'] = "Tap Untuk Melihat Lokasi";
            $responses['messages'][0]['address'] = "Location";
            $responses['messages'][0]['latitude'] = $explode[0];
            $responses['messages'][0]['longitude'] = $explode[1];
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);  
            $client->replyMessage($result_json);
    	} else {
    	    sendMaintenanceMessage($replyToken, 'x0012', $con, $userId, $client, "Gagal menemukan lokasi");
    	}
    } else if($commandPostback == '/beliobat') {
        if($optionsPostback) {
            $cekObat = mysqli_query($con, "SELECT * FROM obat WHERE id='$optionsPostback'");
            $dataObat = mysqli_fetch_array($cekObat);
            
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "template";
            $responses['messages'][0]['altText'] = "Konfirmasi membeli obat";
            $responses['messages'][0]['template']['type'] = "buttons";
            $responses['messages'][0]['template']['thumbnailImageUrl'] = NULL;
            $responses['messages'][0]['template']['imageBackgroundColor'] = "#FFFFFF";
            $responses['messages'][0]['template']['title'] = NULL;
            $responses['messages'][0]['template']['text'] = "Apakah kamu yakin ingin membeli obat ".$dataObat['nama']." ?";
            $responses['messages'][0]['template']['actions'][0]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][0]['label'] = "Ya";
            $responses['messages'][0]['template']['actions'][0]['data'] = "/yabeliobat ".$optionsPostback;
            $responses['messages'][0]['template']['actions'][1]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][1]['label'] = "Tidak";
            $responses['messages'][0]['template']['actions'][1]['data'] = "/tidakbeliobat";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
    	    $client->replyMessage($result_json);
    	} else {
    	    sendMaintenanceMessage($replyToken, 'x0013', $con, $userId, $client, "Gagal melakukan pembelian obat");
    	}
    } else if($commandPostback == '/tidakbeliobat') {
        $responses['replyToken'] = $replyToken;
        $responses['messages'][0]['type'] = "text";
        $responses['messages'][0]['text'] = "Baik, kabari aku kalau kamu butuh sesuatu";
        $result = json_encode($responses);
        $result_json = json_decode($result, TRUE);
        $client->replyMessage($result_json);
    } else if($commandPostback == '/yabeliobat') {
        if($optionsPostback) {
            $cekObat = mysqli_query($con, "SELECT * FROM obat WHERE id='$optionsPostback'");
            $dataObat = mysqli_fetch_array($cekObat);
            
            if(mysqli_query($con, "INSERT INTO proses(userid, status, data1) VALUES ('$userId','beliobat1','$optionsPostback')")) {
                $responses['replyToken'] = $replyToken;
                $responses['messages'][0]['type'] = "text";
                $responses['messages'][0]['text'] = "Alamat kamu apa?";
                $result = json_encode($responses);
                $result_json = json_decode($result, TRUE);
                $client->replyMessage($result_json);
            }
    	} else {
    	    sendMaintenanceMessage($replyToken, 'x0014', $con, $userId, $client, "Gagal melakukan pembelian obat");
    	}
    } else if($commandPostback == '/yabeliobatambil') {
        $cekObat = mysqli_query($con, "SELECT * FROM obat WHERE id='$rowData[data1]'");
        $dataObat = mysqli_fetch_array($cekObat);
        
        $kodeResep = "#".rand(1111, 9999);
        $namaObat = $dataObat['nama'];
        $hargaObat = $dataObat['harga'];
        
        if(mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'")) {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "OK, dibawah ini kode resep kamu, silahkan kamu bawa ke apotek terdekat, kamu bisa gunakan kata kunci \"cari apotek terdekat\" untuk mencari apotek terdekat";
            $responses['messages'][1]['type'] = "text";
            $responses['messages'][1]['text'] = "Kode Resep : $kodeResep\n\nNama Obat: $namaObat\nHarga: $hargaObat";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0018', $con, $userId, $client, "Gagal melakukan pembelian obat");
        }
    } else if($commandPostback == '/yabeliobatkirim') {
        if($rowData['status'] == "beliobat2") {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "template";
            $responses['messages'][0]['altText'] = "Konfirmasi metode pembayaran pembelian obat";
            $responses['messages'][0]['template']['type'] = "buttons";
            $responses['messages'][0]['template']['thumbnailImageUrl'] = NULL;
            $responses['messages'][0]['template']['imageBackgroundColor'] = "#FFFFFF";
            $responses['messages'][0]['template']['title'] = NULL;
            $responses['messages'][0]['template']['text'] = "Ingin menggunakan metode pembayaran apa?";
            $responses['messages'][0]['template']['actions'][0]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][0]['label'] = "Virtual Account";
            $responses['messages'][0]['template']['actions'][0]['data'] = "/valist";
            $responses['messages'][0]['template']['actions'][1]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][1]['label'] = "Transfer Bank";
            $responses['messages'][0]['template']['actions'][1]['data'] = "/banklist";
            $responses['messages'][0]['template']['actions'][2]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][2]['label'] = "QRIS";
            $responses['messages'][0]['template']['actions'][2]['data'] = "/payment qris";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
        	$client->replyMessage($result_json);
    	} else {
    	    sendMaintenanceMessage($replyToken, 'x0014', $con, $userId, $client, "Gagal melakukan pembelian obat");
    	}
    } else if($commandPostback == '/valist') {
        if($rowData['status'] == 'beliobat2') {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "template";
            $responses['messages'][0]['altText'] = "Konfirmasi metode pembayaran pembelian obat";
            $responses['messages'][0]['template']['type'] = "buttons";
            $responses['messages'][0]['template']['thumbnailImageUrl'] = NULL;
            $responses['messages'][0]['template']['imageBackgroundColor'] = "#FFFFFF";
            $responses['messages'][0]['template']['title'] = NULL;
            $responses['messages'][0]['template']['text'] = "Ingin menggunakan metode pembayaran apa?";
            $responses['messages'][0]['template']['actions'][0]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][0]['label'] = "VA Mandiri";
            $responses['messages'][0]['template']['actions'][0]['data'] = "/payment vamandiri";
            $responses['messages'][0]['template']['actions'][1]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][1]['label'] = "VA BNI";
            $responses['messages'][0]['template']['actions'][1]['data'] = "/payment vabni";
            $responses['messages'][0]['template']['actions'][2]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][2]['label'] = "VA BCA";
            $responses['messages'][0]['template']['actions'][2]['data'] = "/payment vabca";
            $responses['messages'][0]['template']['actions'][3]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][3]['label'] = "VA BRI";
            $responses['messages'][0]['template']['actions'][3]['data'] = "/payment vabri";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0015', $con, $userId, $client, "Pembayaran gagal karena kamu belum memilih obat");
        }
    } else if($commandPostback == '/banklist') {
        if($rowData['status'] == 'beliobat2') {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "template";
            $responses['messages'][0]['altText'] = "Konfirmasi metode pembayaran pembelian obat";
            $responses['messages'][0]['template']['type'] = "buttons";
            $responses['messages'][0]['template']['thumbnailImageUrl'] = NULL;
            $responses['messages'][0]['template']['imageBackgroundColor'] = "#FFFFFF";
            $responses['messages'][0]['template']['title'] = NULL;
            $responses['messages'][0]['template']['text'] = "Ingin menggunakan metode pembayaran apa?";
            $responses['messages'][0]['template']['actions'][0]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][0]['label'] = "TF Mandiri";
            $responses['messages'][0]['template']['actions'][0]['data'] = "/payment tfmandiri";
            $responses['messages'][0]['template']['actions'][1]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][1]['label'] = "TF BNI";
            $responses['messages'][0]['template']['actions'][1]['data'] = "/payment tfbni";
            $responses['messages'][0]['template']['actions'][2]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][2]['label'] = "TF BCA";
            $responses['messages'][0]['template']['actions'][2]['data'] = "/payment tfbca";
            $responses['messages'][0]['template']['actions'][3]['type'] = "postback";
            $responses['messages'][0]['template']['actions'][3]['label'] = "TF BRI";
            $responses['messages'][0]['template']['actions'][3]['data'] = "/payment tfbri";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0016', $con, $userId, $client, "Pembayaran gagal karena kamu belum memilih obat");
        }
    } else if($commandPostback == '/payment') {
        if($rowData['status'] == 'beliobat2') {
            if($optionsPostback == "vamandiri") {
                sendPaymentMethode($replyToken, $client, $profileName, "Virtual Account Mandiri");
            } else if($optionsPostback == "vabni") {
                sendPaymentMethode($replyToken, $client, $profileName, "Virtual Account BNI");
            } else if($optionsPostback == "vabca") {
                sendPaymentMethode($replyToken, $client, $profileName, "Virtual Account BCA");
            } else if($optionsPostback == "vabri") {
                sendPaymentMethode($replyToken, $client, $profileName, "Virtual Account BRI");
            } else if($optionsPostback == "tfmandiri") {
                sendPaymentMethode($replyToken, $client, $profileName, "Transfer Bank Mandiri");
            } else if($optionsPostback == "tfbni") {
                sendPaymentMethode($replyToken, $client, $profileName, "Transfer Bank BNI");
            } else if($optionsPostback == "tfbca") {
                sendPaymentMethode($replyToken, $client, $profileName, "Transfer Bank BCA");
            } else if($optionsPostback == "tfbri") {
                sendPaymentMethode($replyToken, $client, $profileName, "Transfer Bank BRI");
            } else if($optionsPostback == "qris") {
                $code = base64_encode("https://api.qrserver.com/v1/create-qr-code/?size=350x350&data=INI_CERITANYA_QRIS_DENGAN_NOMOR_KODE_".rand(111111111111111,999999999999999));
                $output = file_get_contents("https://if.farzain.com/ai/chatbot/message_template/qris.php?replyToken=$replyToken&image=$code");
                
                $result_json = json_decode($output, TRUE);
                $client->replyMessage($result_json);
            } else {
                sendMaintenanceMessage($replyToken, 'x0017', $con, $userId, $client, "Metode pembayaran tidak ditemukan");
            }
        } else {
            sendMaintenanceMessage($replyToken, 'x0019', $con, $userId, $client, "Gagal melakukan pembelian obat");
        }
    } else if($commandPostback == '/sudahbayar') {
        if(mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'")) {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Terima kasih sudah membeli obat di Dr Snake, berikut ini adalah URL tracking dari pihak gojek agar kamu bisa mengetahui dimana lokasi kurir obat kamu\n\nhttps://ceritanyainiurlgojek.com/tracking?id=".rand(1111111111,9999999999);
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0020', $con, $userId, $client, "Gagal melakukan pembelian obat");
        }
    } else if($commandPostback == '/tidakjadi') {
        if(mysqli_query($con,"DELETE FROM proses WHERE userid='$userId'")) {
            $responses['replyToken'] = $replyToken;
            $responses['messages'][0]['type'] = "text";
            $responses['messages'][0]['text'] = "Baik, hubungi aku kalau kamu butuh bantuan";
            $result = json_encode($responses);
            $result_json = json_decode($result, TRUE);
            $client->replyMessage($result_json);
        } else {
            sendMaintenanceMessage($replyToken, 'x0021', $con, $userId, $client, "Kamu belum melakukan pembelian obat");
        }
    }
}

// // pesan terima location
// if ($message['type']=='location') {
//     $lat = $message['latitude'];
//     $long = $message['longitude'];
    
// }
?>