#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Pandoc is super cool and seems very powerful.
# it converts between almost every markup language I've ever heard of
# e.g. you can convert yaml to html to pdf to docx to xml to json
# pretty powerful but seems like it has a steep learning curve


# GENERATE a properly formatted pandoc reference template
# pandoc -o custom-reference.docx --print-default-data-file reference.docx

pandoc --extract-media=. --from docx --to json example-post-adviser.docx --output example-post-adviser.json

pandoc --extract-media=. --from docx --to markdown demo.docx --output demo.json

pandoc --extract-media=. --from docx --to markdown demo.docx --output demo.md

pandoc demo.json --reference-doc=custom-reference.docx -o demo-using-reference-dod.docx
