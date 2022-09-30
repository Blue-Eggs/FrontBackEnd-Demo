from django.http import JsonResponse

def getRoutes(request):
    routes = [
        {
            'title': 'DemoMAMA',
            'method': 'GET',
            'body': 'None',
            'decription': 'Returns an array of notes'
        },
        {
            'title': 'demoID',
            'method': 'GET',
            'body': 'None',
            'decription': 'Returns an array of notes'
        },
        {
            'title': 'Create',
            'method': 'POST',
            'body': '',
            'decription': 'Returns an array of notes'
        },
        {
            'title': 'DemoDel',
            'method': 'DELETE',
            'body': 'None',
            'decription': 'Deletes and exiting note'
        },
    ]
    return JsonResponse(routes, safe=False)