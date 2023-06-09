from document import Document
from consignment_note import Consignment_note
from receipt import Receipt
from check import Check

check = Check('hj,b','43.56.89','franklin ruzvelt','nfgdjgfdk','bxjxjm','hgdddk')
print(check.show_info())
doc = Document('hj,b','43.56.89','franklin ruzvelt','nfgdjgfdk')
print (doc.show_info())
rec = Receipt('hj,b','43.56.89','franklin ruzvelt','nfgdjgfdk','bxjxjm')
print(rec.show_info())
cn = Consignment_note('hj,b','43.56.89','franklin ruzvelt','nfgdjgfdk','bxjxjm')
print(cn.show_info())
