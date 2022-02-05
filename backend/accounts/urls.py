from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

app_name = 'accounts'

urlpatterns = [
    #  basic security
    path('login/', auth_views.LoginView.as_view(template_name='accounts/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='accounts/signup.html'), name='logout'),
    path('signup/', views.SignUp.as_view(), name='signup'),
    path('user/', views.UserRecordView.as_view(), name='user'),
]