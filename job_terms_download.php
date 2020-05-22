<?php

function extractUrlsFromCommonCrawlIndexResults($cc_filename)
{
    $contents = file_get_contents($cc_filename);
    $contents = '[' . preg_replace('/\}\s*\{"urlkey/', "}\n, {\"urlkey", $contents) . ']';

    $json = json_decode($contents);

    foreach ($json as $k=>$obj)
    {
        echo $obj->url . "\n";
    }
}

// given some $raw_html, return the viewable text
function extractTextFromHTML($raw_html)
{
    // strip code elements away from text adapted from https://stackoverflow.com/a/48417432/6254147
    $dom = new DOMDocument();
    $dom->loadHTML($raw_html);

    $tags_to_remove = ['script', 'style', 'iframe', 'link'];;
    foreach ($tags_to_remove as $tag)
    {
        $element = $dom->getElementsByTagName($tag);
        foreach ($element as $item)
        {
            $item->parentNode->removeChild($item);
        }
    }

    return trim(
            preg_replace('/\n\n[\s\t\n]*/'
                    , "\n\n"
                    , strip_tags($dom->saveHTML())
            )
    );
}

// update a row with $text_only extracted from $raw_content
function updateTextOnly($mysqli, $id, $raw_content)
{
    $text_only = extractTextFromHTML($raw_content);

        $update_text_only = "UPDATE job_terms SET"
                . " text_only = '" . $mysqli->real_escape_string($text_only) . "'"
                . " WHERE id = $id";
        $mysqli->query($update_text_only)
            or die('failed with '. $update_text_only . "\n" . $mysqli->error . "\n");
}


// download url resource and add content/text to DB
function updateWithDownload($mysqli, $id, $url)
{
    // https://stackoverflow.com/a/38720392/6254147
    $contextOptions = [
        'ssl' => [
            'verify_peer' => false
            , 'verify_peer_name' => false
        ]
        ];

    $raw_content = file_get_contents($url, false, stream_context_create($contextOptions));

    $text_only = extractTextFromHTML($raw_content);

        $update_with_download = "UPDATE job_terms SET"
                . " raw_content = '" . $mysqli->real_escape_string($raw_content) . "'"
                . ", text_only = '" . $mysqli->real_escape_string($text_only) . "'"
                . " WHERE id = $id";
        $mysqli->query($update_with_download)
            or die('failed with '. $update_with_download . "\n" . $mysqli->error . "\n");
}

extractUrlsFromCommonCrawlIndexResults('cc-tutorialspoint.com.json');

exit;

$mysqli = mysqli_connect('localhost', 'root', 'student')
    or die('Could not connect');
$mysqli->select_db('terms');

$sql_all_job_terms = "SELECT * FROM job_terms WHERE visited IS NOT NULL";
$res = $mysqli->query($sql_all_job_terms)
    or die('failed with '. $sql_all_job_terms . "\n" . $mysqli->error . "\n");


// this loop attempts to extract text from raw webpage content and update the row data
    while ($ret = $res->fetch_assoc())
    {
        $id = $ret['id'];
        $raw_content = $ret['raw_content'];
        updateTextOnly($mysqli, $id, $raw_content);
    }
    exit;







// the following loop downloads resources at urls from db

$visited_domains = [];
while ($ret = $res->fetch_assoc())
{
    $id = $ret['id'];
    $name = $ret['name'];
    $description = $ret['description'];
    $url = $ret['url'];

    if (empty($url) || strpos($url, 'wikipedia') < 0) continue;

    $parsed_url = parse_url($url);
    $domain = $parsed_url['host'];
    if (empty($domain))
    {
        continue;
    }

    echo $domain . "\n";

    if (empty($visited_domains[$domain]))
    {
        $visited_domains[$domain] = [];
        // skip delay because we run right away // $visited_domains[$domain][$id] = $url;
        updateWithDownload($mysqli, $id, $url);
    }
    else
    {
        $visited_domains[$domain][$id] = $url;
    }
    $created = $ret['created'];
}

while (count($visited_domains) > 0)
{
    sleep(1);
    foreach ($visited_domains as $domain => $urls)
    {
        if (count($urls) < 1)
        {
            unset($visited_domains[$domain]);
            continue;
        }

        $url = array_shift($urls);
        updateWithDownload($mysqli, $id, $url);

    }
}


?>
