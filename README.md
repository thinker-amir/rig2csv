## rig2csv

print a csv file with fake identities  
`powerd by rig`

### Requirement

```bash
    apt install rig
```

### Run

```bash
    sh rig2csv.sh
```

### Run with options
also, you can set number of identities with `-n` options and set csv separator character with `-s`
```bash
    sh rig2csv.sh -n=10 -s=";"
```

#### Output
```csv
first_name;last_name;street_number;address;area_code
Kennith;Villarreal;561 Spring County Blvd;"Berkeley, CA  94704";(510) xxx-xxxx
Rosetta;Mcdowell;250 Kennel Ln;"Addison, IL  60101";(708) xxx-xxxx
Mel;Franco;902 Ashland St;"Roanoke, VA  24022";(703) xxx-xxxx
Bridgett;Finley;22 Sunrise Rd;"Garland, TX  75040";(903) xxx-xxxx
Hans;Sanchez;553 Flanty Terr;"Dayton, OH  45401";(513) xxx-xxxx
Alice;Pennington;103 Cedarwood Ln;"Albany, NY  12212";(518) xxx-xxxx
Herschel;Walters;679 Beley Rd;"Mentor, OH  44060";(216) xxx-xxxx
Ricky;Edwards;753 Burnet Dr;"Gary, IN  46401";(219) xxx-xxxx
Althea;Walls;8 Darly Rd;"Phoenix, AZ  85026";(602) xxx-xxxx
Cathy;Buck;287 Ashland St;"Mentor, OH  44060";(216) xxx-xxxx
```

#### Write to a file
for example create 15 fake identities and write them into "users.csv" file 
```bash
    sh rig2csv.sh -n=15 -s=";" >> users.csv 
```