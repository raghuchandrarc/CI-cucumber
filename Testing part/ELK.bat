cd %USERPROFILE%\AppData\Local\Programs\Python\Python37-32\Scripts

curl -XDELETE localhost:9200/cucumber

pip install elasticsearch-loader

elasticsearch_loader --index cucumber --type data csv C:\Users\Public\Documents\StatusList.csv

