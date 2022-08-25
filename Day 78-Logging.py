import logging
logging.basicConfig(filename="firstlog.log", level=logging.DEBUG, format='%(asctime)s %(message)s')
def add(a,b):
    addi=a+b
    logging.info(addi)
def div(a,b):
    try:
        divi=a/b
        logging.info('The division is %s',divi)
    except Exception as e:
        logging.exception(e)
add(3,5)
div(3,0)
div(4,2)
#debug
#info
#Warning
#error
#critical