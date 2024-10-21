#!/bin/bash

########### Author : Bagus Koko Wibawanto ########### 
########### File : generate-article.sh ########### 

variableFile="content.txt"

## Read variable from content.txt
function readContentFromVariableFile {
   source $variableFile 
}

## Create directory for workdir article
function createDir {
  ## Create Main Directory
  if [ ! -d "$mainDirectoryName" ]; then
    mkdir "$mainDirectoryName"
  fi

  ## Create Image Directory
  if [ ! -d "../assets/images/$imageDirectoryName" ]; then
    mkdir "../assets/images/$imageDirectoryName"
  fi
}

## Start & End Article
function startArticle {
  echo -e "<!DOCTYPE html>\n<html>"
}

function endArticle {
  echo -e "</html>"
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
    <meta property="og:title" content=\"$title\" />
    <meta property="og:description" content=\"$description\" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content=\"../assets/images/$imageDirectoryName/thumbnail$thumbnailFormat\" />
    <meta property="og:url" content=\"https://baguskokow.github.io/$urlToBeCreated/\" />
</head>"
}

# Write body open & close Tag
function bodyOpenTag {
  echo -e "\n<body>"
}

function bodyCloseTag {
  echo -e "\n</body>"
}

# To generate metadata article. Example : title, date
function bodyMetaDataArticle {
	echo -e "  <div class="container-satu">                                                                                                                                                                                    
    <nav class="wrapper">                                                                                                                                                                                         
      <div class="brand">                                                                                                                                                                                         
        <h1>Bagus Koko</h1>                                                                                                                                                                                       
      </div>                                                                                                                                                                                                      
                                                                                                                                                                                                                  
      <ul class="navigation">                                                                                                                                                                                     
        <li><a href="https://github.com/baguskokow" target='_blank'><img src="../assets/images/global/github.png"></a></li>                                                                                       
      </ul>                                                                                                                                                                                                       
    </nav>                                                                                                                                                                                                        
  </div>                                                                                                                                                                                                          
                                                                                                                                                                                                                  
  <div class="card">                                                                                                                                                                                              
    <!-- Judul, Author, Waktu, Thumbnail -->                                                                                                                                                                      
    <div class="container-dua">                                                                                                                                                                                   
      <div class="judul">                                                                                                                                                                                         
        <h2>"$title"</h2>                                                                                                                                                                        
        <br>                                                                                                                                                                                                      
        <div class="keterangan">                                                                                                                                                                                  
          <div class="author">                                                                                                                                                                                    
            <p>Bagus Koko Wibawanto</p>                                                                                                                                                                           
          </div>                                                                                                                                                                                                  
                                                                                                                                                                                                                  
          <div class="time">                                                                                                                                                                                      
            <img src="../assets/images/global/calendar.png">                                                                                                                                                      
            <p>"$dateOfWriting"</p>                                                                                                                                                                                   
          </div>                                                                                                                                                                                                  
        </div>                                                                                                                                                                                                    
      </div>                                                                                                                                                                                                      
                                                                                                                                                                                                                  
      <div class="thumbnail">                                                                                                                                                                                     
 	       <img src=\"../assets/images/$imageDirectoryName/thumbnail$thumbnailFormat\">                                                                                                                                   
      </div>                                                                                                                                                                                                      
    </div>"
}

# To write div open tag class "content" 
function divClassContentOpenTag {
	echo -e "\n    <div class=\"content\">"
}

# To write div close tag class "content" 
function divClassContentCloseTag {
	echo -e "  </div>"
}

# To write div open tag class "isi" 
function divClassIsiOpenTag {
	echo -e "\n      <!-- Content dari Artikel -->
      <div class=\"isi\">"
}

# To write div close tag class "isi" 
function divClassIsiCloseTag {
	echo -e "\n      </div>      <!-- Akhir class isi -->" 
}

## To write paragraph
function paragraph {
	paragraph=$1 ## Get value variable from argument function
	echo -e "        <p>$paragraph</p>
        <br>\n"
}

## To write reference
function reference {
	reference=$1 ## Get value variable from argument function
	echo -e "        <p>$reference</p>
        <br>\n"
}

## To insert an image in html
function images {
	image=$1 ## Get value variable from argument function
  echo -e "        <div class="image">                                                                                                                                                                                       
          <img src=\"../assets/images/$imageDirectoryName/$image\">                                                                                                                                   
        </div>
        <br>\n"
}

## To insert a code in html
function code {
	code="$1"
	echo -e "        <div class="code">                                                                                                                                                                                        
              <pre>                                                                                                                                                                                                   
$code
              </pre>                                                                                                                                                                                                  
        </div>                                                                                                                                                                                                    
        <br>" 
}

## To generate heading
function heading {
	headingType=$1
	headingContent=$2

	if [ "$1" == "h1" ]; then
		echo -e "        <h1>$headingContent</h1>\n        <br>\n"
	elif [ "$1" == "h2" ]; then
		echo -e "        <h2>$headingContent</h2>\n        <br>\n"
	elif [ "$1" == "h3" ]; then
		echo -e "        <h3>$headingContent</h3>\n        <br>\n"
	elif [ "$1" == "h4" ]; then
		echo -e "        <h4>$headingContent</h4>\n        <br>\n"
	fi
}

# notes function to generate note class
function notes {
	note="$1"
	echo -e "\n        <div class="note">                                                                                                                                                                                              
          <p>$note</p>                                                                                                                                                                                               
        </div>\n      <br>\n"
}

# backButton function to generate "back" button
function backButton {
	echo -e "\n    <div class=\"back\">                                                                                                                                                                                          
      <p><a href="../index.html">&laquo; Back</a></p>                                                                                                                                                           
    </div>"
}

## function to add additional content on main page
function printContentForMainPage {
  echo -e "      <div class="content card-dua urut_1">                                                                                                                                                                       
        <h2><a href="$mainDirectorName/">$title</a></h2>                                                                                                                                           
        <div class="time">                                                                                                                                                                                        
          <img src="assets/images/global/calendar.png">                                                                                                                                                           
          <p>$dateOfWriting</p>                                                                                                                                                                                  
        </div>                                                                                                                                                                                                    
                                                                                                                                                                                                                  
        <br>                                                                                                                                                                                                      
                                                                                                                                                                                                                  
        <div class="description">                                                                                                                                                                                 
          <p>$description</p>
        </div>                                                                                                                                                                                                    
      </div>"
}

function main {
  readContentFromVariableFile
  createDir
  > $mainDirectoryName/$fileName
  startArticle >> $mainDirectoryName/$fileName
  headArticle >> $mainDirectoryName/$fileName
  bodyOpenTag >> $mainDirectoryName/$fileName
	bodyMetaDataArticle >> $mainDirectoryName/$fileName
	divClassContentOpenTag >> $mainDirectoryName/$fileName
	divClassIsiOpenTag >> $mainDirectoryName/$fileName

#######[ Make changes to some of the variable below ]#######################                                                                                                                                      
########[ If you have some paragraph, then initialise more than one! ]######
	paragraph "$firstParagraph" >> $mainDirectoryName/$fileName
	images "$firstImage" >> $mainDirectoryName/$fileName
	paragraph "$secondParagraph" >> $mainDirectoryName/$fileName
	notes "$firstNote" >> $mainDirectoryName/$fileName
	paragraph "$thirdParagraph" >> $mainDirectoryName/$fileName
	images "$secondImage" >> $mainDirectoryName/$fileName
	paragraph "$fourthParagraph" >> $mainDirectoryName/$fileName
	code "$firstCode" >> $mainDirectoryName/$fileName
	heading "h3" "$firstHeadingContent" >> $mainDirectoryName/$fileName
	paragraph "$fifthParagraph" >> $mainDirectoryName/$fileName
	heading "h3" "$secondHeadingContent" >> $mainDirectoryName/$fileName
	reference "$firstReference" >> $mainDirectoryName/$fileName
	reference "$secondReference" >> $mainDirectoryName/$fileName
	reference "$thirdReference" >> $mainDirectoryName/$fileName
###########################################################################

	divClassIsiCloseTag >> $mainDirectoryName/$fileName
	backButton >> $mainDirectoryName/$fileName
	divClassContentCloseTag >> $mainDirectoryName/$fileName
  bodyCloseTag >> $mainDirectoryName/$fileName
	endArticle >> $mainDirectoryName/$fileName
	
	## Call function to print additional content in main page
	printContentForMainPage
}

## Call main function
main
