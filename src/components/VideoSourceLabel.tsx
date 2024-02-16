import VideoDataJson from '../../public/dataset/videos.json';

export interface VideoSourceLabelProps {
  videoTitle: string;
}

function VideoSourceLabel(props: VideoSourceLabelProps) {
  const found = VideoDataJson.find((d) => {
    return d.title === props.videoTitle;
  });
  if (found !== undefined) {
    return <a href={found.url} target="_blank">{found.date} {found.title}</a>;
  }
  return <>{props.videoTitle}</>;
}

export default VideoSourceLabel;
