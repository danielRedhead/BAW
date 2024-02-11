# Data and information for Batchelor's thesis group.

In this repository you will find the relevant data, and information about the data, that you will need to complete your Batchelor's thesis.

## 2024 Thesis group  

Please go into the '2024' folder. Here you will find data for the projects on Colombia and on Pemba.

**NOTE**: Be careful when opening the data in Excel. It has a funny way of transforming certain data into dates, or into other completely different values.

### Colombia

**NOTE**: Sitecodes correspond the following villages

- **coastal**: Predominantly afro-Colombia village with high levels of poverty and an aging population.
- **lowland**:  Predominantly Embera and afro-Colombia village with high levels of poverty and an aging population.
- **highland**:  Mestizo population, more market integrated.
- **altiplano**: Mestizo population, most market integrated with many people performing wage-labour for coffee/flower producers.

The data folder includes the following files:

- **individual_attributes.csv**: *This file contains all of the processed data relevant to the Batchelor's thesis*. Information on each variable, and how these variables were constructed can be found in 'household_attributes_metadata.csv'.
- **individual_attributes_metadata.csv**: This file contains descriptions of each variable, explains how they were created, and provides the relevant survey question phrasing.

**You can use the following files to produce network metrics (e.g., in-degree or out-degree) or plot the networks using whatever software you feel most comfortable with (e.g., UCINET or R):

- [SITECODE]_exchange.csv: These are matrices/networks of material resource sharing reported between individuals. There are four different networks matching up with the four different villages.
- [SITECODE]_friendship.csv: These are matrices/networks of friendships reported between individuals. There are four different networks matching up with the four different villages.
- [SITECODE]_friendship.csv: These are matrices/networks of co-working relationships reported between individuals. There are four different networks matching up with the four different villages.
- [SITECODE]_kinship.csv: These are matrices/networks of genetic relatedness values drawn from the genealogical data that we have for the villages. There are four different networks matching up with the four different villages.

### Pemba

**NOTE**: Remember that the sharing networks were 'double-sampled' (i.e., participants were asked 'who do you share food with?' and 'who shares food with you?'). Therefore, there are two different sharing matrices, and resulting in-degree and out-degree calculations for each household. This is explained below and also in the metadata.

The data folder includes the following files:

- **household_attributes.csv**: *This file contains all of the processed data relevant to the Batchelor's thesis*. Information on each variable, and how these variables were constructed can be found in 'household_attributes_metadata.csv'.
- **household_attributes_metadata.csv**: This file contains descriptions of each variable, explains how they were created, and provides the relevant survey question phrasing.
- household_sharing_union.csv: This is a matrix/network of material resource sharing between households. The network was specified by taking the *union of double-sampled nominations*, such that if *either* individual reported the tie, then there is a 1.
- household_sharing_intersection.csv: This is a matrix/network of material resource sharing between households. The network was specified by taking the *intersection of double-sampled nominations*, such that a 1 is only present in the network when *both* individuals reported the tie.  
- men_friendship.csv: A matrix of friendships for men in the household.
- women_friendship.csv: A matrix of friendships for women in the household.
- men_work.csv: A matrix of working relationships for men in the household.
- women_work.csv: A matrix of working relationships for men in the household.
- relatedness_matrix.csv: A matrix of the average genetic relatedness between households, computed from the detailed genealogies that with have for the community.
