from django.http import JsonResponse

def getRoutes(request):
    routes = [
        {
            'title': '/DemoMAMA',
            'method': 'GET',
            'body': None,
            'decription': 'Returns an array of notes'
        },
        {
            'title': '/Demo/id',
            'method': 'GET',
            'body': None,
            'decription': 'Returns an array of notes'
        },
        {
            'title': '/Demo/create/',
            'method': 'POST',
            'body': {'body':""},
            'decription': 'Returns an array of notes'
        },
        {
            'title': '/Demo/id/delete/',
            'method': 'DELETE',
            'body': None,
            'decription': 'Deletes and exiting note'
        },
    ]
    return JsonResponse(routes, safe=False)