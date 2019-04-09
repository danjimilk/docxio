#!/usr/bin/env python
# -*- coding: utf-8 -*-
from docx import Document

document = Document('demo.docx')

document.save('demo-copy.docx')
