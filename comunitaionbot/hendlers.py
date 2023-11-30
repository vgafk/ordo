from aiogram import Router, types, F
from aiogram.filters import Command
from aiogram.types import Message

router = Router()


@router.message(Command("start"))
async def start_handle(message: Message):
    print(message.from_user)
    await message.answer("Привет! Мы с тобой не знакомы. Хочешь представиться или остаться тайным?")
