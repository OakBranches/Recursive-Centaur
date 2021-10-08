
# Matheus Ramos de Carvalho

def centaur(a, b = True):
    # finish
    if a < 0:
        return

    # call the upper level
    centaur(a-1, False)

    # default values
    top = '|       #'
    bottom = '\n'

    # is the first body?
    if a == 0:
        # +head
        top=' o\n/|\_____\n|       #'
    else:
        # spaces + default top
        top = (a-1)* '     '+ '! !``'+ top
    
    # is the last body?
    if b:
        # add the legs
        bottom = '\n'+(a)*'     '+'! !```! !'
    else:
        # add the back
        top += '____'

    # print centaur lvl a
    print(top + bottom, end='')


x = int(input())
centaur(x)