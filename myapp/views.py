from django.conf import settings
from mysite.settings import client
from django.http import HttpResponse


def index(request):
    show_feature = client.variation("ld-test-flag-2", {"key": "user@test.com"}, False)
    return HttpResponse(f'flag status: {show_feature}', status=200)
