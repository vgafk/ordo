from datetime import date, datetime

from sqlalchemy import String, DateTime, Integer, func, ForeignKey, Boolean
from sqlalchemy.orm import Mapped, relationship, mapped_column

from .local_base import Base


class User(Base):
    __tablename__ = 'lotus_group'
    id: Mapped[int] = mapped_column(primary_key=True)
    lotus_name: Mapped[str] = mapped_column(String(50), nullable=True)
    ordo_name: Mapped[str] = mapped_column(String(50), nullable=True)