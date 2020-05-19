import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

config.set('qt.highdpi', True)
config.set('url.start_pages', ['https://www.gitlab.com/zelezarof'])
