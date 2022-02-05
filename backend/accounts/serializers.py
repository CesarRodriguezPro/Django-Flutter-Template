from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator
from .models import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = (
            'username',
            'first_name',
            'last_name',
            'pk',
            'location',
            'can_used_mobile_app',
            'can_change_location_app',
            'can_skip_schedule',
        )
        validators = [
            UniqueTogetherValidator(
                queryset=User.objects.all(),
                fields=['username', 'email']
            )
        ]