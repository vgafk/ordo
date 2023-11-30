from datetime import date

from sqlalchemy import String, DateTime, Integer, ForeignKey
from sqlalchemy.orm import Mapped, relationship, mapped_column

from .local_base import Base


class User(Base):
    __tablename__ = 'user'
    id: Mapped[int] = mapped_column(primary_key=True)
    login: Mapped[str] = mapped_column(String(50), nullable=True)
    password: Mapped[str] = mapped_column(String(50), nullable=True)

    student_data = relationship("StudentData", backref='user', passive_deletes=True)


class Student(Base):
    __tablename__ = 'student'
    id: Mapped[int] = mapped_column(primary_key=True)
    surname: Mapped[str] = mapped_column(String(100), nullable=False)
    name: Mapped[str] = mapped_column(String(100), nullable=False)
    born_date: Mapped[date] = mapped_column(DateTime, nullable=True)
    middle_name: Mapped[str] = mapped_column(String(100), nullable=True)
    file_number: Mapped[str] = mapped_column(String(50), nullable=True)
    snils: Mapped[str] = mapped_column(String(15), nullable=True)
    passport_series: Mapped[str] = mapped_column(String(10), nullable=True)
    passport_number: Mapped[str] = mapped_column(String(10), nullable=True)
    passport_date: Mapped[date] = mapped_column(DateTime, nullable=True)
    passport_organ: Mapped[str] = mapped_column(String(255), nullable=True)
    gender: Mapped[int] = mapped_column(Integer, nullable=False)
    address: Mapped[str] = mapped_column(String(500), nullable=False)
    phone: Mapped[str] = mapped_column(String(50), nullable=True)
    email: Mapped[str] = mapped_column(String(50), nullable=True)

    user_id: Mapped[int] = mapped_column(ForeignKey("user.id", ondelete='CASCADE'), nullable=True)
    finance_form_id: Mapped[int] = mapped_column(ForeignKey("finance_form.id"), nullable=False)
    citizenship_id: Mapped[int] = mapped_column(ForeignKey("citizenship.id"), nullable=False)
    sport_type_id: Mapped[int] = mapped_column(ForeignKey("sport_type.id"), nullable=True)


class FinanceForm(Base):
    __tablename__ = 'finance_form'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(50), nullable=False, unique=True)


class SportType(Base):
    __tablename__ = 'sport_type'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(50), nullable=False, unique=True)


class Citizenship(Base):
    __tablename__ = 'citizenship'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(50), nullable=False, unique=True)
    okms: Mapped[str] = mapped_column(String(50), nullable=False, unique=True)
