* Simpson's Paradox With Palmer Penguin Data

* from a Tweet by Andrew Heiss

use "penguins.dta"

* bivariate

twoway (scatter culmen_depth_mm body_mass_g)(lfit culmen_depth_mm body_mass_g)

regress culmen_depth_mm body_mass_g

* multivariate

twoway (scatter culmen_depth_mm body_mass_g)(lfit culmen_depth_mm body_mass_g), by(species) 

regress culmen_depth_mm body_mass_g species


