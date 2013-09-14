jefit
=====

Data analysis stuff for the Jefit Android App backup database. See the <i>Jefit Data Munging</i> serie of posts for more information.

Tools available
-------------------------
<dl>
  <dt>jefit-data-analysis.R</dt>
  <dd>R script for reading the Jefit backup database and create a PDF file with some training statistics graphs.
    It has the following dependencies:
    * DBI
    * RSQLite
    * ggplot2
    * scales
    * grid
  </dd>
  <dt>jefit-data-munging.pl</dt>
  <dd>Perl script for migrating the Jefit backup database to a custom database.
  This script uses the DBIx::Class model libraries under lib/.</dd>
  <dt>create-myjefit-db.sh</dt>
  <dd>Shell script for creating the custom database. It uses the SQL
  statements contained in the file <i>myjefit-boostrap.sql</i></dd>
</dl>

References
------------------------
* Jefit Data Munging
  Part [I](http://opensysblog.directorioc.net/2013/08/jefit-data-munging-i-introduction-and.html)
  Part [II](http://opensysblog.directorioc.net/2013/08/jefit-data-munging-ii-better-data-model.html)
  Part [III](http://opensysblog.directorioc.net/2013/08/jefit-data-munging-iii-dude-where-are.html)
  Part [IV](http://opensysblog.directorioc.net/2013/08/jefit-data-munging-iv-populating.html)
  Part [V](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-v-adding-training.html)
  Part [VI](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-v-adding-training.html)
  Part [VII](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-vii-what-now.html)
  Part [VIII](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-vii-what-now.html)
  Part [IX](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-vii-what-now.html)
  Part [X](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-x-even-more-graphs.html)
  Part [XI](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-xi-pure-r.html)
  Part [X](http://opensysblog.directorioc.net/2013/09/jefit-data-munging-xii-final-notes-and.html)
* JEFIT Android Workout Tracker http://www.jefit.com/
