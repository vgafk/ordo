from datetime import datetime
from uuid import uuid4

from sqlalchemy import String, DateTime, Integer, func, ForeignKey
from sqlalchemy.orm import Mapped, relationship, mapped_column

from .local_base import Base


class ScosStudent(Base):
    __tablename__ = 'scos_student'
    id: Mapped[int] = mapped_column(primary_key=True)
    student_id: Mapped[int] = mapped_column(ForeignKey("student.id", ondelete='CASCADE'), nullable=False)
    external_id: Mapped[str] = mapped_column(String(255), nullable=False, default=uuid4())
    scos_id: Mapped[str] = mapped_column(String(255), nullable=True)
    last_update: Mapped[datetime] = mapped_column(DateTime, nullable=True)
    last_scos_update: Mapped[datetime] = mapped_column(DateTime, nullable=True)
    deleted: Mapped[datetime] = mapped_column(DateTime, nullable=True)
    deleted_scos: Mapped[datetime] = mapped_column(DateTime, nullable=True)
