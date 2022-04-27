# reversionary-rights

International reversionary rights resources website: [CC Rights Back Resource
[BETA]](https://rights-back-beta.creativecommons.org/)


## Code of Conduct

[`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md):
> The Creative Commons team is committed to fostering a welcoming community.
> This project and all other Creative Commons open source projects are governed
> by our [Code of Conduct][code_of_conduct]. Please report unacceptable
> behavior to [conduct@creativecommons.org](mailto:conduct@creativecommons.org)
> per our [reporting guidelines][reporting_guide].

[code_of_conduct]:https://creativecommons.github.io/community/code-of-conduct/
[reporting_guide]:https://creativecommons.github.io/community/code-of-conduct/enforcement/


## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md).


## Workflow

1. Gather information via Google Forms.
2. Review and copy-edit that information in Google Sheets.
3. Create a new git branch
4. Update the data in `jekyll/_data` by running:
    ```
    ./scripts/overwrite-data.sh
    ```
5. Commit the resulting changes to git
6. Build content
    ```
    ./scripts/build.sh
    ```
7. Commit the resulting changes to git
8. Push changes and create a GitHub pull request

When working with countries, make sure to use the same name for the country in
all the spreadsheets. For the purposes of this project, a "Country" is
something that is named in http://jvectormap.com/maps/world/world , mentioned
below. This means that (for example) we must use "United Kingdom" rather than
"Scotland" or "Wales". Where "Jurisdiction" is an option this can be used to
more accurately describe the resource's origin. I (RobM) apologize for this.


## Spreadsheets

There are three sets of spreadsheets


### Google Form Results

These are the results of people completing the Google Forms. Pay special
attention to whether the contributor has selected the option to receive credit
or not


### Google Sheets

These are the Google sheets that details are copied to from the Results
spreadsheets and given editorial attention on.

Do not copy the contributor's name into these if they have not selected the
option to receive credit.

To export data from these sheets, run `./scripts/overwrite-data.sh` as
described above.


### CSV Documents in `_data`

These are the CSV (Comma Separated Values) format spreadsheets in
`jekyll/_data` that we use to build the pages.

Apart from countries.csv, do not edit the content of these files, rather edit
the Google Sheets then export them and copy them into position.


### countries.csv

`jekyll/data/countries.csv`

The list of countries we have data for. If a country is not listed here, its
data will not be used.


#### code

The uppercase two-letter code for the country (ISO 3166-1 alpha-2). See
http://jvectormap.com/maps/world/world/ .


#### country

The name of the country. This should be in English. See
http://jvectormap.com/maps/world/world/ .


#### notes

Optional text to be included in the country page.


## Used Software

- https://jekyllrb.com/
- https://github.com/avillafiorita/jekyll-datapage_gen
- http://jvectormap.com/


## License


### Code

- [`LICENSE`](LICENSE) (Expat/[MIT][mit] License)

[mit]: http://www.opensource.org/licenses/MIT "The MIT License | Open Source Initiative"


### Content and Data

[![CC BY-SA 4.0 license button][cc-by-sa-png]][cc-by-sa]

The content and data are licensedunder a [Creative Commons
Attribution-ShareAlike 4.0 International License][cc-by-sa].

[cc-by-sa-png]: https://licensebuttons.net/l/by-sa/4.0/88x31.png#floatleft "CC BY-SA 4.0 license button"
[cc-by-sa]: https://creativecommons.org/licenses/by-sa/4.0/ "Creative Commons Attribution-ShareAlike 4.0 International License"
