# emtech-distributed-data

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/) ![GitHub issues](https://img.shields.io/github/issues/Avanade/emtech-distributed-data) ![GitHub](https://img.shields.io/github/license/Avanade/emtech-distributed-data) ![GitHub Repo stars](https://img.shields.io/github/stars/Avanade/emtech-distributed-data?style=social)

## Overview

This repository showcases Avanade's exploration with Distributed Data solutions, built for data sharing, security, and attestability. Over time, it will showcase additional integrations with our current research topics around distributed data.

### Contents

This repository contains:

- [Oltiva Actif](docs/sql-ledger-usecase.md) - A prototype application using ledger tables to protect and share healthcare data, between patients, and healthcare providers. The scenario provides QR codes which end users can scan, to approve the sharing of their data - and for how long the data should be shared for. Ledger tables track the consent, and the date at which data should be wiped, so that the 'destroy date' is kept attested, so that data is only retained for as long as needed.
- [Oltiva SafeDrive](docs/confidential-ledger-usecase.md) - A multi-container docker compose application that simulates the actions of multiple vehicles with IoT sensors driving on the roads, storing the data to Azure Confidential Ledger, so that in the event of a crash, by comparing the data from one car, to the data on another (if it exists), you could determine liability for the collision.


Explore the [Azure SQL Ledger use case](docs/sql-ledger-usecase.md) and the [Azure Confidential Ledger use case](docs/confidential-ledger-usecase.md).

### Licensing

emtech-distributed-data is available under the [MIT Licence](./LICENCE).

### Solutions Referenced

- [Azure SQL Database ledger tables](https://docs.microsoft.com/en-us/azure/azure-sql/database/ledger-overview?WT.mc_id=AI-MVP-5004204)
- [Azure Confidential Ledger](https://docs.microsoft.com/en-gb/azure/confidential-ledger/?WT.mc_id=AI-MVP-5004204)

### Documentation

The `docs` folder contains [more detailed documentation](docs/start-here.md), with links out to setup instructions for each demo.

Feel free to contact the team on Twitter, either [Chris](https://twitter.com/sealjay_clj) or [Fergus](https://twitter.com/FergusKidd). For bugs, please [raise an issue on GitHub](https://github.com/Avanade/emtech-distributed-data/issues).

## Contributing

Contributions are welcome. See information on [contributing](CONTRIBUTING.md), as well as our [code of conduct](CODE_OF_CONDUCT.md).

If you're happy to follow these guidelines, then check out the [getting started](docs/start-here.md) guide.
