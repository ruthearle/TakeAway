#Makers Academy Friday Challenge
##Week 4

This weeks challenge is to create a test-driven takeaway program that takes orders, totals the bill, and sends a text message to the customer advising them of the
delivery time.

The program makes use of Twilio API.

####`Customer` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Order`         | To have a name    |
|`#TakeAway`      | To have a number  |

####`Dish` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Menu`          | To have a name    |
|`#LineItem`      | To have a price   |

####`LineItem` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Dish`, `#Order`     | To have a dish, to know the quantity of dishes required, to know the total cost of the quantity of dishes.


####`Menu` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Dish`         | Stores a number of dishes |
|                | Can display all dishes stored |

####`Message` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Customer`     | Send a sms to the customer with order details and time of delivery |
|`#TakeAway`     |

####`Order` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#LineItem`     | Can store items   |
|                | Can calculate the grand total of an order |

####`TakeAway` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Menu`         | Can have a menu of dishes |
|`#Customer`     | Can take an order from a customer |
|`#Order`        | Sends a sms to the customer
|`#Message`      |

