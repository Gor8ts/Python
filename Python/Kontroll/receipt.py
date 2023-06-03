from consignment_note import Consignment_note

class Receipt(Consignment_note):
    def __init__(self, seal, date, signature, parties_to_the_contract, number_document) -> None:
        super().__init__(seal, date, signature, parties_to_the_contract, number_document)
        