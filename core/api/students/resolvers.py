from sqlalchemy import insert

from .p_models import NewStudent
from dbase.local_base import get_session
from dbase.models_student import Student


async def add_student(new_student: NewStudent):
    async with get_session() as session:
        stmt = (insert(Student)
                .values(surname=new_student.surname, name=new_student.name, middle_name=new_student.middle_name,
                        born_date=new_student.born_date, file_number=new_student.file_number , snils=new_student.snils,
                        passport_series=new_student.passport_series, passport_number=new_student.passport_number,
                        passport_date=new_student.passport_date, passport_organ=new_student.passport_organ,
                        gender=new_student.gender, address=new_student.address, phone=new_student.phone,
                        email=new_student.email, finance_form_id=new_student.finance_form,
                        citizenship_id=new_student.citizenship))
        result = (await session.execute(stmt))
        await session.commit()
        return result.lastrowid

        # query = text(f'''INSERT INTO student(surname, name, middle_name, born_date, file_number, snils, passport_series,
        #             passport_number, passport_date, passport_organ, gender, address, phone, email)
        #             VALUES({new_student.surname}, {new_student.name}, {new_student.middle_name}, {new_student.born_date},
        #             {new_student.file_number}, {new_student.snils}, {new_student.passport_series},
        #             {new_student.passport_number}, {new_student.passport_date}, {new_student.passport_organ},
        #             {new_student.gender}, {new_student.address}, {new_student.phone}, {new_student.email})''')


