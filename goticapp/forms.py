from django import forms
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm, UserChangeForm
from django.contrib.auth.models import User


class LoginForm(AuthenticationForm):
    username = forms.CharField(label='username', widget=forms.TextInput(
        attrs={'placeholder': 'Masukkan Username Anda', 'class': 'text-input'}))
    password = forms.CharField(label='kata sandi', widget=forms.PasswordInput(
        attrs={'placeholder': 'Masukkan Kata sandi Anda', 'class': 'text-input'}))

    class Meta:
        model = User
        fields = ('username', 'password')


class RegistrationForm(UserCreationForm):
    first_name = forms.CharField(label='Nama Depan', max_length=100, widget=forms.TextInput(
        attrs={'placeholder': 'Masukkan nama depan Anda', 'class': 'text-input'}))
    last_name = forms.CharField(label='Nama Belakang', max_length=100, widget=forms.TextInput(
        attrs={'placeholder': 'Masukkan nama belakang Anda', 'class': 'text-input'}))
    username = forms.CharField(label='Username', max_length=100, widget=forms.TextInput(
        attrs={'placeholder': 'Masukkan Username Anda', 'class': 'text-input'}))
    email = forms.EmailField(label='Email', widget=forms.EmailInput(
        attrs={'placeholder': 'Masukkan Email Anda', 'class': 'text-input'}))
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput(
        attrs={'placeholder': 'Masukkan Kata sandi Anda', 'class': 'text-input'}))
    password2 = forms.CharField(label='Confirm Password', widget=forms.PasswordInput(
        attrs={'placeholder': 'Konfirmasi Kata sandi Anda', 'class': 'text-input'}))

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username',
                  'email', 'password1', 'password2')

    def clean_username(self):
        username = self.cleaned_data['username']
        if User.objects.filter(username=username).exists():
            raise forms.ValidationError("Username already exists.")
        return username

    def clean_email(self):
        email = self.cleaned_data['email']
        if User.objects.filter(email=email).exists():
            raise forms.ValidationError("Email address already exists.")
        return email

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        confirm_password = cleaned_data.get('confirm_password')
        if password and confirm_password and password != confirm_password:
            raise forms.ValidationError("Passwords do not match.")

class OrderForm():
    pass