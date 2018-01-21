This is a code to make a mosaic using LIDAR digital elevation models from
INEGI (governemental geographical data source in Mexico).
The data used are the ASCII files downloaded from:
http://www3.inegi.org.mx/sistemas/productos/default.aspx?cl=209010200

The files are downloaded as zip files, which must be decompressed before running the code. 

These files can be saved on different folders since each zip file
is formed by three different folders. For instance the name of the folder can be
the code of each file (e.g. E13D13F2). But, this is a suggestion, it is not
complementary.

Afterwards, the code can be run and the output will be a tiff file, which can be
plot in R or opened in a SIG like ArcGIS.

Furthermore, it is necessary to change the code in the projection part with the
neccesary projection defined by each user. The code can be found in this web page:
http://spatialreference.org/


Careli Caballero
MSc Geo-information Science# Mosaic_LIDAR_INEGI
"# Mosaic_LIDAR_INEGI" 
