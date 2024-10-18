title="Menggunakan PKI System Untuk Autentikasi di LXD"
description="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
directoryName="menggunakan-pki-system-untuk-autentikasi-di-lxd"
fileName="result.html"

## Create directory for workdir article
function createDir {
  if [ ! -d $directoryName ]; then
    mkdir $directoryName
  fi
}

## Start Article
function startArticle {
  echo -e "<!DOCTYPE html>\n<html>"
}

## Head Article
function headArticle {
  echo -e "<head>
    <title>Bagus Koko</title>
    <link rel="stylesheet" href="../assets/styles/designsystem.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
    <meta charset="UTF-8">
    <meta property="og:title" content="$title" />
    <meta property="og:description" content="$description" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="../assets/images/13_integrasi_kvm_dengan_ceph/thumbnail.jpg" />
    <meta property="og:url" content="https://baguskokow.github.io/integrasi-kvm-dengan-ceph/" />
  </head>"
}

## Main call
function main {
  createDir
  > $directoryName/$fileName
  startArticle >> $directoryName/$fileName
  headArticle >> $directoryName/$fileName
}

main
