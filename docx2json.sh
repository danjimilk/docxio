#!/usr/bin/env bash
# -*- coding: utf-8 -*-

infile="$1"
outfile="$2"

pandoc --extract-media=. --from docx --to json "$infile" --output "$outfile"
