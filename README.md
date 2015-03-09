
#Borris Bikes
_____________________

This was our first project in Week 1 of Makers Academy. The task was to create a bike rental system; whereby a bike could be rented from a depot if working, but if broken would be picked up by a van and taken to a garage to be repaired.

##Pair Partner
[Danielle Demkiw](https://github.com/ddemkiw)

##Tools Used
* Ruby
* Rspec

##Things Learned
This was an exercise in design, encapsulation, and inheritance. It was also our first experience of using test driven development, and of using mocks in order to carry out unit tests.

## Domain Model / CRC

A bike can have a status of broken or fixed. If it is broken it will need to be collected by a van and transported to a garage to be fixed. If it is working it can remain in the docking station until it is used. A van, a docking station, and a garage all have a maximum capacity after which it cannot receive any further bikes.


Collaborations
--------------

Bike                    | Collaborators
------------------------|-------------------
Can be broken           | 
Can be fixed            | Garage


Docking Station         | Collaborators
------------------------|-------------------
Receives working bikes  | Bike, Van

Van                     | Collaborators
------------------------|--------------------
Picks up bike           | Bike, Docking Station, Garage
Transports bike         | Bike
Drops off bike          | Bike, Docking Station, Garage

Garage                  | Collaborators
------------------------|--------------------
Receives bike           | Bike, Van
Fixes bike              | Bike
Releases bike           | Bike, Van


Ultimately I ended up creating the following classes and modules:

Classes
-------

* Bike
* Van
* Garage
* Docking Station

Modules
-------

* Bike Container (this module created the methods that would be shared by a depot, van and garage)


_______________________________

##Issues faced

This was our first experience of using object oriented design and encapsulation; it was hard trying to work out which objects should have which responsibilities.

##Future intentions / To do

- Add errors for when bike container is full
- Add tracking for vans
