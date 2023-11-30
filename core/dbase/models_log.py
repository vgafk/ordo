from datetime import datetime

from sqlalchemy import String, DateTime, Integer, func, ForeignKey
from sqlalchemy.orm import Mapped, relationship, mapped_column

from .local_base import Base


class LogEventLog(Base):
    __tablename__ = 'log_event_log'
    id: Mapped[int] = mapped_column(primary_key=True)
    table_name: Mapped[str] = mapped_column(String(100), nullable=False)
    record_id: Mapped[int] = mapped_column(Integer, nullable=False)
    event_time: Mapped[datetime] = mapped_column(DateTime, nullable=False)
    event_type: Mapped[int] = mapped_column(ForeignKey("log_event_type.id", ondelete='CASCADE'), nullable=False)
    user_id: Mapped[int] = mapped_column(ForeignKey("user.id", ondelete='CASCADE'), nullable=False)


class LogEventType(Base):
    __tablename__ = 'log_event_type'
    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(100), nullable=False)
