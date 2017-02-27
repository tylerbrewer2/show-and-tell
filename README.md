### Feature toggle exercise.

Using the [Flip](https://github.com/pda/flip) gem.

#### Scenarios

1. **DB** 

	Administrators complained that not having standardized roles has led to inconsistencies in the data so we want to make it a dropdown list. 
	
	- Make a new table to hold available roles
	- Create a relationship with the user and role
	- There is existing data in the database (run `rake db:seed`)

2.  **VALIDATION** 

	We got a complaint that not everyone has a middle name so we want it to no longer be a required field.

	- Show what the required fields are
	- Show validation errors when a required field is not populated

3.  **JS** 

	It was determined it would be a better user experience that after a user updates a profile, they should see how it is changed in the card instead of refreshing the page.
	
	- Highlight user selection for the visible card
	- After the user saves, show the updated changes on the user card

4.  **ROUTES**

	Routes are becoming hard to maintain and users cannot bookmark a page without going through all of the actions.
	
	- Make the profile route RESTful so it can be book marked and when invoked will pull up the users card when invoked
	- Modify the existing code to use this route when the toggle is on
	
5. **API**

	We decided our `who_am_i` API should be open to the public, but with some modifications.
	
	- We do not want to share a user's role
	- We want to rename the API to make it more appealing
	- We want to add the image URL to the JSON
	- Our existing code will also use this API

	We also want to test out if users prefer XKCD opposed to Chuck Norris.
	
	- Switch the joke module from the [Chuck Norris API](https://api.chucknorris.io/jokes/random) to [XKCD Comic API](https://xkcd.com/info.0.json).

