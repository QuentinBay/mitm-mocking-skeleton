import bobo


@bobo.query(route='/api/v1/hello')
def hello(person):
    return 'Hello %s!\n' % person


@bobo.post(route='/api/v1/bye')
def bye(person):
    return 'Bye %s!\n' % person


@bobo.query(route='/api/health')
def health():
    return 'Doing great\n'

