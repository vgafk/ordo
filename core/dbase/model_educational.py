from datetime import date, datetime

from sqlalchemy import String, DateTime, Integer, ForeignKey, Boolean
from sqlalchemy.orm import Mapped, mapped_column

from .local_base import Base


class EducationalForm(Base):
    __tablename__ = 'educational_form'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(100), nullable=False, unique=True)


class Faculty(Base):
    __tablename__ = 'faculty'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(10), nullable=False, unique=True)
    full_name: Mapped[str] = mapped_column(String(255), nullable=True, unique=True)


class Group(Base):
    __tablename__ = 'group'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(20), nullable=False, unique=True)
    full_name: Mapped[str] = mapped_column(String(255), nullable=True, unique=True)
    current_course: Mapped[int] = mapped_column(Integer, nullable=False)
    begin_year: Mapped[int] = mapped_column(Integer, nullable=False)
    end_year: Mapped[int] = mapped_column(Integer, nullable=True)
    issue_date: Mapped[date] = mapped_column(DateTime, nullable=True)

    faculty_id: Mapped[int] = mapped_column(ForeignKey("faculty.id"), nullable=False)
    educational_form_id: Mapped[int] = mapped_column(ForeignKey("educational_form.id"), nullable=False)


class StudentGroup(Base):
    __tablename__ = 'student_group'
    id: Mapped[int] = mapped_column(primary_key=True)
    add_date: Mapped[datetime] = mapped_column(DateTime, nullable=False, default=datetime.now())
    praepostor: Mapped[bool] = mapped_column(Boolean, nullable=False)

    group_id: Mapped[int] = mapped_column(ForeignKey("group.id", ondelete='CASCADE'), nullable=False)
    student_id: Mapped[int] = mapped_column(ForeignKey("student.id", ondelete='CASCADE'), nullable=False)