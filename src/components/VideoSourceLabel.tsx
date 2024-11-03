import VideoDataJson from '../../public/dataset/videos.json';

function VideoSourceLabel(props: {
  videoTitle: string;
}) {
  const found = VideoDataJson.find((d) => {
    return d.title === props.videoTitle;
  });
  if (found !== undefined) {
    return <a href={found.url} target="_blank">{found.date} {found.title}</a>;
  }
  return <>{props.videoTitle}</>;
}

function getVideoDate(videoTitle: string): number {
  const found = VideoDataJson.find((d) => {
    return d.title === videoTitle;
  });
  if (found !== undefined) {
    return new Date(found.date).getTime();
  }
  return 0;
}

export default VideoSourceLabel;
export {getVideoDate};
