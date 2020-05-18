while ($full_code =~ m#podcast\-episode\-card.*?podcast\-episode\-name.*?<a.*?href=\"(.*?)\".*?<span>(.*?)</span.*?<\/a>.*?<span.*?><div.*?>(.*?)<.*?podcastDescription.*?>(<div>)?(.*?)<\/div>.*?podcast\-mark\-as\-played#gi) {
		my $fullurl = "https://www.iheart.com" . $1;
		my $title = $2;
		my $date = $3;
		my $story = $5;

		my $clean_title = slugify($title);
		$title =~ s/\&/\&amp;/g;

		my $t = Time::Piece->strptime($date, "%B %e, %Y");
		my $bydate = $t->strftime("%F");

		print RSS "\t\t" . "<item>\n";
		print RSS "\t\t" . " <title>" . $title . "</title>\n";
		print RSS "\t\t" . " <link>" . $fullurl . "</link>\n";
		print RSS "\t\t" . ' <guid isPermaLink="false">' . $fullurl . "</guid>\n";
		print RSS "\t\t" . " <description><![CDATA[" . $story ."]]></description>\n";
		print RSS "\t\t" . " <dc:date>" . $bydate . "</dc:date>\n";
		print RSS "\t\t" . "</item>\n";
}
