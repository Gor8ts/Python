# date of receipt
# дата получения

from receipt import Receipt

class Check(Receipt):
    def __init__(self, seal, date, signature, parties_to_the_contract, number_document, date_of_receipt) -> None:
        super().__init__(seal, date, signature, parties_to_the_contract, number_document)
        self.date_of_receipt = date_of_receipt

    def show_info(self):
        super().show_info()
        print (f'date_of_receipt:{self.date_of_receipt}')
               
# check = Check('hj,b','43.56.89','franklin ruzvelt','nfgdjgfdk','bxjxjm','hgdddk')
# print(check.show_info())