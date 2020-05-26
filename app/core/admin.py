from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

from .models import User

# Register your models here.


class UserAdmin(BaseUserAdmin):
    ordering = ['id']
    list_display = ['email', 'name']


admin.site.register(User, UserAdmin)
