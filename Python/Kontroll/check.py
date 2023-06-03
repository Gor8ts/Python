# date of receipt
# дата получения

from receipt import Receipt

class Check(Receipt):
    def __init__(self, seal, date, signature, parties_to_the_contract, number_document, date_of_receipt) -> None:
        super().__init__(seal, date, signature, parties_to_the_contract, number_document)
        self.date_of_receipt = date_of_receipt