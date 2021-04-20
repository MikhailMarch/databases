import redis
import json

r = redis.Redis(
host='redis-11973.c253.us-central1-1.gce.cloud.redislabs.com',
port="11973",
password='kdhqnn9rGfzXMi5I1dWeD7IB3roshOif')

customers = "Customers"


def add_customer(customer_number, first_name, last_name):
    d = {"first_name": first_name, "last_name": last_name}
    r.hset(customers, customer_number, json.dumps(d))

orders = "Orders"

def add_order(order_number, customer_number, order_date, order_total):
    d = {"customer_numb": customer_number, "order_date": order_date, "order_total": order_total}
    r.hset(orders, order_number, json.dumps(d))

# Add a player to the Redis sorted set against the score

customer_id = 1
first_name = "Jane"
last_name = "Doe"

add_customer(customer_id, first_name, last_name)

customer_id = 2
first_name = "John"
last_name = "Doe"

add_customer(customer_id, first_name, last_name)

customer_id = 3
first_name = "Jane"
last_name = "Smith"

add_customer(customer_id, first_name, last_name)

customer_id = 4
first_name = "John"
last_name = "Smith"

add_customer(customer_id, first_name, last_name)

customer_id = 5
first_name = "Jane"
last_name = "Jones"

add_customer(customer_id, first_name, last_name)

customer_id = 6
first_name = "John"
last_name = "Jones"

add_customer(customer_id, first_name, last_name)

# Print all the customers based on score in descending order

print("Contents of the Redis  in descending order:")

print(r.hgetall(customers))

order_id = 1001
customer_id = 2
order_date = "10/10/09"
order_total = 250.85

add_order(order_id, customer_id, order_date, order_total)

order_id = 1002
customer_id = 2
order_date = "2/21/10"
order_total = 125.89

add_order(order_id, customer_id, order_date, order_total)

order_id = 1003
customer_id = 3
order_date = "11/15/09"
order_total = 1567.99

add_order(order_id, customer_id, order_date, order_total)

order_id = 1004
customer_id = 4
order_date = "11/22/09"
order_total = 180.92

add_order(order_id, customer_id, order_date, order_total)

order_id = 1005
customer_id = 4
order_date = "13/11/10"
order_total = 565.00

add_order(order_id, customer_id, order_date, order_total)

order_id = 1006
customer_id = 6
order_date = "11/22/09"
order_total = 25.00

add_order(order_id, customer_id, order_date, order_total)

order_id = 1007
customer_id = 6
order_date = "10/08/09"
order_total = 85.00

add_order(order_id, customer_id, order_date, order_total)

order_id = 1008
customer_id = 6
order_date = "12/29/09"
order_total = 109.12

add_order(order_id, customer_id, order_date, order_total)

print("Contents of the Redis in descending order:")

print(r.hgetall(customers))

profiles = "Profiles"


def add_profile(id_, login, name, followers, following, posts):
    d = {"login": login, "name": name, "Followers": followers, "Following": following, "Posts": posts}
    r.hset(profiles, id_, json.dumps(d))


posts = "Posts"


def add_post(id_, login, time, content):
    d = {"login": login, "time": time, "Content": content}
    r.hset(profiles, id_, json.dumps(d))


id_ = 1
login = "login1"
name = "Mike"
Followers = [3]
Following = [1]
Posts = []

add_profile(id_, login, name, Followers, Following, Posts)

id_ = 2
login = "login2"
name = "Tim"
Followers = [2]
Following = [3]
Posts = [1]

add_profile(id_, login, name, Followers, Following, Posts)

id_ = 1
login = "login2"
time = "12/21/11"
Content = ["Post content"]

add_post(id_, login, time, Content)


