Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify Luke`s eyes are blue
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/people/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.eye_color` is equal to `blue`

Scenario: API_1_actor
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/people/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.results[0]name` is equal to `Luke Skywalker`

Scenario: API_all_actors
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/people/`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.results[0]name` is equal to `Luke Skywalker`
Then JSON element value from `${response}` by JSON path `$.results[1]name` is equal to `C-3PO`
Then JSON element value from `${response}` by JSON path `$.results[2]name` is equal to `R2-D2`
Then JSON element value from `${response}` by JSON path `$.results[3]name` is equal to `Darth Vader`
Then JSON element value from `${response}` by JSON path `$.results[4]name` is equal to `Leia Organa`
Then JSON element value from `${response}` by JSON path `$.results[5]name` is equal to `Owen Lars`
Then JSON element value from `${response}` by JSON path `$.results[6]name` is equal to `Beru Whitesun lars`
Then JSON element value from `${response}` by JSON path `$.results[7]name` is equal to `R5-D4`
Then JSON element value from `${response}` by JSON path `$.results[8]name` is equal to `Biggs Darklighter`
Then JSON element value from `${response}` by JSON path `$.results[9]name` is equal to `Obi-Wan Kenobi`