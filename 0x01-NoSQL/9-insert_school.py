#!/usr/bin/env python3
"""
Python function that inserts a new document in a collection based on kwargs
"""


def insert_school(mongo_collection, **kwargs):
    """ insert a new document to the collection """
    the_new_doc =  mongo_collection.insert_one(kwargs)
    return the_new_doc.inserted_id
