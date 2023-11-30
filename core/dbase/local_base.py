from contextlib import asynccontextmanager
from typing import AsyncGenerator

from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker
from sqlalchemy.orm import declarative_base

from .settings import (LOCAL_BASE_DRIVER, LOCAL_BASE_USER_NAME,
                       LOCAL_BASE_USER_PASSWORD, LOCAL_BASE_HOST,LOCAL_BASE_NAME)

engine = create_async_engine(f"{LOCAL_BASE_DRIVER}://{LOCAL_BASE_USER_NAME}:"
                             f"{LOCAL_BASE_USER_PASSWORD}@{LOCAL_BASE_HOST}/"
                             f"{LOCAL_BASE_NAME}", echo=True)

async_session = async_sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)

Base = declarative_base()


async def init_models():
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.drop_all)
        await conn.run_sync(Base.metadata.create_all)


@asynccontextmanager
async def get_session() -> AsyncGenerator[AsyncSession, None]:
    async with async_session() as session:
        async with session.begin():
            try:
                yield session
            finally:
                await session.close()

