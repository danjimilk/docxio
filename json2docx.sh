#!/usr/bin/env bash
# -*- coding: utf-8 -*-

infile="$1"
outfile="$2"

pandoc "$infile" --reference-doc=custom-reference.docx -o "$outfile"
