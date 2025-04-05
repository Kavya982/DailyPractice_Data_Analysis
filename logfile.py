import logging

logging.basicConfig(
    level=logging.DEBUG,
    filename="data.log",
    filemode="a",
    format='%(name)s-%(levelname)s-%(message)s'
)

logging.debug("debug message")
logging.error("Error message")
logging.info("Information")
logging.critical("Critical message")
logging.warning("Warninig message")