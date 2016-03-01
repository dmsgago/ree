from django.conf.urls import url, patterns

from . import views

app_name = 'consultas'
urlpatterns = patterns(
    '',
    url(r'^$', consultas.views.index, name='index'),
    url(r'^info/(?P<empresa_cif>.+)$', consultas.views.info, name='info'),
)
