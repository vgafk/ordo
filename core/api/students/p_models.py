from datetime import date
from typing import Optional

from pydantic import BaseModel


class NewStudent(BaseModel):
    surname: str
    name: str
    born_date: date
    middle_name: Optional[str]
    file_number: Optional[str]
    snils: Optional[str]
    passport_series: Optional[str]
    passport_number: Optional[str]
    passport_date: Optional[str]
    passport_organ: Optional[str]
    gender: int
    address: str
    phone: Optional[str]
    email: Optional[str]
    user_id: Optional[int]
    finance_form: int
    citizenship: int
    sport_type: Optional[int]
