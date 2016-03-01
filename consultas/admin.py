from django.contrib import admin

# Register your models here.
from .models import Empresas, Provincias, Centrales

admin.site.register(Empresas)
admin.site.register(Provincias)
admin.site.register(Centrales)
