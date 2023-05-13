#!/usr/bin/env python3
"""
Python function that lists all documents in a collection.
"""


import pymongo


def list_all(mongo_collection):

    """ Return an empty list if no document in the collection """
    if not mongo_collection:
        return []
    for document in mongo_collection.find():
        return document
