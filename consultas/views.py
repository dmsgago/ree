from django.shortcuts import get_object_or_404, render

# Create your views here.
# Create your views here.
from django.http import Http404
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse

from .models import Empresas, Provincias, Centrales

def index(request):
    lista_empresas = Empresas.objects.all()
    return render(
        request, 'consultas/index.html',
        {
            'lista_empresas': lista_empresas
        })
def info(request, empresa_cif):
    empresa = get_object_or_404(Empresas, pk=empresa_cif)
    centrales = Centrales.objects.raw(
        '''
        SELECT c.nombre AS nombre, c.direccion AS direccion, 
            c.telefono AS telefono, p.nombre AS provincia
        FROM consultas_centrales c
        LEFT JOIN consultas_provincias p
        ON c.codigo_provincia_id=p.codigo
        WHERE c.cif_empresa_id=\'%s\'
        '''%empresa_cif)
    if sum(1 for central in centrales) == 0:
        centrales=''
    return render(
        request, 'consultas/info.html',
        {
            'empresa': empresa,
            'centrales': centrales
        })
