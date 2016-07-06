
# BORIS BIKES
## A program to run a system of bike docking stations and simulate all the bikes and emulate the infrastructure includind vans rapair staff etc.
=======
# boris-bikes

Boris bikes are public bicycles available for rent at designated stations across London for up to 24 hour periods.

```Boris Bikes```


-----------------------Testing Area-------------------------

**Step 1. README.md**

**Step 2. User Story into a Domain Model**

|Objects        | Messages    |
|---------------|:-----------:|
|Person         |             |
|Bike           |working?     |
|  							|returned			|
|DockingStation |release_bike |
|								|dock_bike		|
|								|capacity     |

```Communication Diagram```

```Primary Object``` → ```Reference Object``` → ```Message```

```Person``` → ```Bike``` → ```docking_station_with_bike``` → ```find_working_bike```

**Step 3. Domain Model for a feature**

Define 'Feature Test'```

Feature Testing, changes to new functionality or significantly modifies functionality. Mapping function of a variable to a new object

```Define 'stack trace'```

stack trace provides map of functionality


**Step 4. Errors Are Good**

```Error Message```

NameError: uninitialized constant DockingStation
	from (irb):3
	from /Users/thadycondon/.rvm/rubies/ruby-2.3.0/bin/irb:11:in `<main>'

```Error Type```

error is NameError, caused by uninitialized constant.

```File Path```

/Users/thadycondon/.rvm/rubies/ruby-2.3.0/bin/irb

```Error Line Number```

Error occuring in the irb file (on line 11)

```Error Meaning```

uninitialized constant DockingStation == Referred to a class or module that doesn't exist.

```Error Solution```

Make DockingStation a Class or Module in a file located within current directory.

**Step 5. Rspec**

Require, describe, spec and ruby files created.

**Step 6.**

Rspec running and passing, no error

**Step 7.**

release_bike will return NameError due to no release_bike method within DockingStation class (Object's message is not called)

**Step 8.**

Rspec docking_station.rb testing for release_bike method within DockingStation class

release_bike method with action made.

**Step 9. **

Completed feature tests

**Step 10. **

Completed feature tests for working?

**Step 11. **

Instantiated bike as an attribute of DockingStation and passed feature and unit tests.

**Step 12. **

Only allowed one bike out at a time. Requires bike to be docked before can be released.

**Step 13. **

Complete.

**Step 14. **

Allowed for a total of 20 bikes to exist. This is reflected in both dock and release bike.

**Step 15. **

Created an empty and full private method to manage capacity.
