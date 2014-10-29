#Makers Academy Friday Challenge
##Week 4

This weeks challenge is to create a test-driven takeaway program that takes orders, totals the bill, and sends a text message to the customer advising them of the
delivery time.

The program makes use of Twilio API.

####`Customer` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Order`, `#TakeAway` | To have a name, to have a number |


####`Dish` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Menu`, `#LineItem` | To have a name, to have a price |


####`LineItem` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Dish`, `#Order`     | To have a dish, to know the quantity of dishes required, to know the total cost of the quantity of dishes.


####`Menu` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Dish`         | Stores a number of dishes, can display all dishes stored |


####`Message` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Customer`, `#TakeAway` | Send a sms to the customer with order details and time of delivery |


####`Order` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#LineItem`     | Can store items, can calculate the grand total of an order |


####`TakeAway` Class

**Collaborators**|**Responsibilities**
| -------------- | ----------------- |
|`#Menu`, `#Customer`, `#Order`, `#Message` | Can have a menu of dishes, can take an order from a customer, sends a sms to the customer  |


