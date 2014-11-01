module RemixRetriever
  def soundcloud(artist, song)
    url ="https://api.soundcloud.com/search?q=#{artist}-#{song}-remix&qid=0a241fc9f5412066&facet=model&user_id=542285-317810-215580-312009&limit=10&offset=0&linked_partitioning=1&client_id=b45b1aa10f1ac2941910a7f0d10f8e28&app_version=3dad005"
    result = JSON.load(open(url))

    remixes = result["collection"].collect do |track| 
       (track["title"] =~ /remix/i) && (track["artist"] =~ /"#{artist} -"/i)
          {"title" => track["title"], "plays" => track["playback_count"]}
    end

    remixes.select{|t| t["plays"] }.sort_by { |track| track["plays"] }.reverse!

  end


end