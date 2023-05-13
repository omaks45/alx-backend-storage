#!/usr/bin/env python3
""" Nginx logs stored in MongoDB
"""


from pymongo import MongoClient


def log_stats():
    """ Database: logs
    """
    client = MongoClient('mongodb://127.0.0.1:27017')
    logs_stat = client.logs.nginx
    agg_counts = logs_stat.count_documents({})
    get = logs_stat.count_documents({"method": "GET"})
    post = logs_stat.count_documents({"method": "POST"})
    put = logs_stat.count_documents({"method": "PUT"})
    patch = logs_stat.count_documents({"method": "PATCH"})
    delete = logs_stat.count_documents({"method": "DELETE"})
    path = logs_stat.count_documents(
        {"method": "GET", "path": "/status"})
    print(f"{agg_counts} logs")
    print("Methods:")
    print(f"\tmethod GET: {get}")
    print(f"\tmethod POST: {post}")
    print(f"\tmethod PUT: {put}")
    print(f"\tmethod PATCH: {patch}")
    print(f"\tmethod DELETE: {delete}")
    print(f"{path} status check")


if __name__ == "__main__":
    log_stats()
