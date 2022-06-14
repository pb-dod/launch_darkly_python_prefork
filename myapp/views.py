from django.conf import settings
from django.http import HttpResponse


def index(request):
    show_feature = settings.client.variation("your.flag.key", {"key": "user@test.com"}, False)
    return HttpResponse(f'flag status: {show_feature}', status=200)
