from document import Document

class Consignment_note(Document):
    def __init__(self, seal, date, signature, parties_to_the_contract,number_consignment_note) -> None:
        super().__init__(seal, date, signature, parties_to_the_contract)
        self.number_consignment_note = number_consignment_note