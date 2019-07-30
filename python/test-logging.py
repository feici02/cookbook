import logging

# must be called before any severity level functions
# filemode: a(append), by default
logging.basicConfig(
    filename="app.log", filemode="w", format="%(name)s - %(levelname)s - %(message)s"
)
logging.warning("This will get logged to a file.")

# root is the name of the default logger
logging.debug("This is a debug message.")
logging.info("This is a info message.")
logging.warning("This is a warning message.")
logging.error("This is a error message.")
logging.critical("This is a critical message.")
