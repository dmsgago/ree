from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Empresas(models.Model):
    cif = models.CharField(max_length=9, blank=True, primary_key=True)
    nombre = models.CharField(max_length=25, blank=True)
    def __str__(self):
        return self.nombre

class Provincias(models.Model):
    codigo = models.CharField(max_length=2, blank=True, primary_key=True)
    nombre = models.CharField(max_length=30)
    def __str__(self):
        return self.nombre

class Centrales(models.Model):
    nombre = models.CharField(max_length=25, blank=True, primary_key=True)
    codigo_provincia = models.ForeignKey(Provincias, on_delete=models.CASCADE)
    cif_empresa = models.ForeignKey(Empresas, on_delete=models.CASCADE)
    direccion = models.CharField(max_length=110)
    telefono = models.CharField(max_length=9)
    def __str__(self):
        return self.nombre
