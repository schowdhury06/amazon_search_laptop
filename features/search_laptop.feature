Feature: amazon website search for laptop

	Scenario: Searching for laptop under $500
	   Given I am on the homepage
	    When I search for "laptop"
	    Then I should be directed to search result page
		When the the search result comes in, I click mac os x option from operating list
		 s