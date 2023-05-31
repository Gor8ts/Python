# печать,дата,подпись,стороны договора
# seal, date, signature, parties_to_the_contract

class Document():
    def __init__(self,seal, date, signature, parties_to_the_contract) -> None:
        self.seal = seal
        self. date = date
        self. signature = signature
        self.parties_to_the_contract = parties_to_the_contract