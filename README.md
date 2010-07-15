Pico-Cart
===

An open source shopping cart system written in Ruby using the [Picombo](http://github.com/zombor/Picombo/) framework.

It's goals are to be lightweight, easy to extend/expand, while providing the base set of features to make a shopping cart useful for a client with minimal code futzing. Yes, that's a word.

This software is in pre-pre-pre-pre-alpha, so don't try and use it for anything. You are encouraged to fork and contribute though :)

Items to implement
---

1. Categories
 - Name
 - Order
 - Sub-categories (?)
2. Products
 - Name
 - Order
 - Price (Multiple?)
 - Description
 - Category
3. Cart Object
 - Add items
 - Remove items
 - Change quantity
4. Order Object
 - Object-oriented, Self-processing payments
 - Uses cart object to process an order
 - Applies proper tax
5. Users
 - Roles
 - Order History
6. Admin
 - Categories
 - Products
 - Order History
 - Users
 - Payment Processor Setup
7. Themes

Installing The Database
---

You'll need to install the database schema before you can use this software. Do so by:

1. Modify _application/config/datamapper.yaml_ to match your settings
2. _rake install_db_ to install the schema into your database

Running The Application
---

Using your favorite ruby web server (mine is thin):

1. _thin -R config.ru start_

Why Another Shopping Cart?
---

No systems that I have found are written/run in a way that pleases me. Magento is gigantic, bloated and slow (have you seen it's schema?), OpenCart is run by someone who attacks their users, everything else seems to be ancient php4 with terrible code.

This project aims to fix that.