import fastapi

from .p_models import NewStudent
from .resolvers import add_student

student_router = fastapi.APIRouter()


@student_router.post("/students")
async def add_new_students(students: NewStudent):
    return await add_student(students)
