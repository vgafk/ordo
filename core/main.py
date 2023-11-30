import asyncio

from fastapi import FastAPI
import uvicorn

from dbase.local_base import init_models
from api import student_router

import settings

# from router import routers

app = FastAPI()

app.include_router(student_router)

if __name__ == '__main__':
    # asyncio.run(init_models())
    uvicorn.run('main:app', host=settings.SERVER_HOST, port=settings.SERVER_PORT, reload=True)
