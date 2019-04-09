# docxio


### install pandoc


```
brew install pandoc
```

### run some pandoc tests

Convert from docx to json

```
$   ./docx2json.sh demo.docx demo.json

$   jq -r -M < demo.json
{
  "blocks": [
    {
      "t": "Para",
      "c": [
        {
          "t": "Str",
          "c": "A"
        },
        {
          "t": "Space"
        },

    ...

      "meta": {
        "title": {
          "t": "MetaInlines",
          "c": [
            {
              "t": "Str",
              "c": "Document"
            },
            {
              "t": "Space"
            },
            {
              "t": "Str",
              "c": "Title"
            }
          ]
        }
      }

```

Convert from json into docx

```
$   ./json2docx.sh demo.json demo2.docx
$   open demo2.docx

```

demo.docx should be basically identical to demo2.docx.
