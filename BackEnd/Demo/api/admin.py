from django.contrib import admin
from .models import myDescription
# Register your models here.

@admin.register(myDescription)
class DescriptionAdmin(admin.ModelAdmin):
    list_display = []