"""leaf_detection URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('', views.index,name="index"),
    path('index', views.index,name="index"),
    path('login', views.login,name="login"),
    path('register', views.register,name="register"),
    path('AdminHome',views.AdminHome,name="AdminHome"),
    path('UserHome',views.UserHome,name="UserHome"),
    path('StaffHome',views.StaffHome,name="StaffHome"),
    path('Privacy',views.Privacy,name="Privacy"),
    path('Logout',views.Logout,name="Logout"),
    path('Appoint_Staff',views.Appoint_Staff,name="Appoint_Staff"),
    path('Our_Staff',views.Our_Staff,name="Our_Staff"),
    path('delete_staff',views.delete_staff,name="delete_staff"),
    path('Our_Users',views.Our_Users,name="Our_Users"),
    path('delete_user',views.delete_user,name="delete_user"),
    path('Manage_complaints',views.Manage_complaints,name="Manage_complaints"),
    path('complaints',views.complaints,name="complaints"),
    path('Manage_disease',views.Manage_disease,name="Manage_disease"),
    path('List_disease',views.List_disease,name="List_disease"),
    path('delete_dis',views.delete_dis,name="delete_dis"),

    path('leaf_detection',views.leaf_detection,name="leaf_detection"),
    path('Infrastructure',views.Infrastructure,name="Infrastructure"),
    path('delete_infra',views.delete_infra,name="delete_infra"),
    path('List_infra',views.List_infra,name="List_infra"),
    path('Generate',views.Generate,name="Generate"),
    path('ManageLeaf',views.ManageLeaf,name="ManageLeaf"),
    path('delete_leaf',views.delete_leaf,name="delete_leaf"),
    path('User_List_infra',views.User_List_infra,name="User_List_infra"),
    path('book_infra',views.book_infra,name='book_infra'),
   path('list_booked_infra',views.list_booked_infra,name="list_booked_infra"),

   path('staff_list_booked_infra',views.staff_list_booked_infra,name='staff_list_booked_infra'),
   path('approve_infra_booking',views.approve_infra_booking,name='approve_infra_booking'),
   path('reject_infra_booking',views.reject_infra_booking,name='reject_infra_booking'),


    path('add_scheme',views.add_scheme,name="add_scheme"),
    path('list_scheme',views.list_scheme,name="list_scheme"),
    path('delete_scheme',views.delete_scheme,name="delete_scheme"),
    path('list_staffapproved_scheme',views.list_staffapproved_scheme,name="list_staffapproved_scheme"),
    path('approve_scheme',views.approve_scheme,name="approve_scheme"),
    path('reject_scheme',views.reject_scheme,name="reject_scheme"),

    path('user_list_scheme',views.user_list_scheme,name="user_list_scheme"),
    path('apply_scheme',views.apply_scheme,name="apply_scheme"),
    path('list_applied_scheme',views.list_applied_scheme,name="list_applied_scheme"),

    path('staff_list_applied_scheme',views.staff_list_applied_scheme,name="staff_list_applied_scheme"),
    path('verify_scheme_booking',views.verify_scheme_booking,name="verify_scheme_booking"),
    path('reject_scheme_booking',views.reject_scheme_booking,name="reject_scheme_booking"),



]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
