import FeedData from '../../public/feed.json';

interface Feed {
  url: string;
  title: string;
  source_url: string | null;
  updated: string;
}

function LatestFeeds() {
  const feeds = FeedData as Feed[];

  // feeds から最後の5つのデータを取得
  const latestFeeds = feeds.slice(-5).reverse().map((data) => {
    return <li>
      {
        (data.source_url !== null) ?
          <a
            href={data.source_url}
            target={'_blank'}>
            {data.updated} : {data.title}
          </a>
          :
          <div>{data.updated} : {data.title}</div>
      }
    </li>;
  });

  return (
    <ul>
      {latestFeeds}
    </ul>
  );
}

export default LatestFeeds;
