# grabs all M4V's in the directory, then creates an xml, eventually the server should take care of this
@files = <*.m4v>;
print "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n";
print "<feed>\n";
print "	<!-- resultLength indicates the total number of results for this feed -->\n";
print "	<resultLength>" . scalar(@files) . "</resultLength>\n";
print " <!-- endIndix  indicates the number of results for this *paged* section of the feed -->\n";
print "	<endIndex>" . scalar(@files) . "</endIndex>\n";
$i = 10000;
foreach $file (@files)
{
$title = $file;
$title =~ s/\.m4v//;
$title =~ s/\./ /g;
print "<item sdImg=\"http:\/\/rokudev.roku.com\/rokudev\/examples\/videoplayer\/images\/JimFallon.jpg\" hdImg=\"http:\/\/rokudev.roku.com\/rokudev\/examples\/videoplayer\/images\/JimFallon.jpg\">\n";
print "<title>$title</title>\n";
print "		<contentId>$i</contentId>\n";
print "		<contentType>Movie</contentType>\n";
print "		<contentQuality>SD</contentQuality>\n";
print "		<streamFormat>mp4</streamFormat>\n";
print "		<media>\n";
print "			<streamQuality>SD</streamQuality>\n";
print "			<streamBitrate>1500</streamBitrate>\n";
print "			<streamUrl>http://192.168.1.12/Movies/$file</streamUrl>\n";
print "		</media>\n";
print "		<synopsis></synopsis>\n";
print "		<genres>Clip</genres>\n";
print "		<runtime>1260</runtime>\n";
print "	</item>		\n";
$i = $i + 1;
}

print "</feed>\n";
