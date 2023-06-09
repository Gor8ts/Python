# печать,дата,подпись,стороны договора
# seal, date, signature, parties_to_the_contract

class Document():
    def __init__(self,seal, date, signature, parties_to_the_contract) -> None:
        self.seal = seal
        self.date = date
        self.signature = signature
        self.parties_to_the_contract = parties_to_the_contract

    def show_info(self):
        print(f'date signature:{self.date}\nparties_to_the_contract:{self.parties_to_the_contract}')