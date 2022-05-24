# Cinema Local
Launch a local, demo instance of cinema explorer

## Dependencies
* curl 
* unzip
* Google Chrome

## Usage
To build a local instance of cinema, simply invoke `./build.sh`.  
To launch this instance, invoke `./launch.sh`.  This will open a chrome window with special (relaxed) 
security settings that allow cinema to read from the local copy of `databases.json`.
