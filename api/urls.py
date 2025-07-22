from django.urls import re_path, include
from .views import book_view, health_view, book_detail_view

app_name = 'api'

urlpatterns = [
    re_path(
        r"^$", health_view, name='health'
    ),
    re_path(
        r"^books/$", book_view, name='books'   # handles list/create
    ),
    re_path(
	r"^books/(?P<pk>\d+)/$", book_detail_view, name='book-detail'    # handles retrieve/update/delete
    )
]




#
# Alternative way:
#from django.urls import path
#
#urlpatterns = [
#    path('', health_view),
#    path('books/', book_view),
#    path('books/<int:pk>/', book_detail_view),
#]

