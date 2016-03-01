from django.conf.urls import url

from . import views

app_name = 'consultas'
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^info/(?P<empresa_cif>.+)$', views.info, name='info'),
]
