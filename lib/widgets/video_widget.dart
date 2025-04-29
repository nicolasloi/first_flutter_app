import 'package:flutter/material.dart';
import '../data/home_data.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeVideo.length,
      itemBuilder: (context, index) {
        final video = homeVideo[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail
            SizedBox(
              width: double.infinity,
              height: 220,
              child: video.thumbnail.isNotEmpty
                  ? Image.network(
                video.thumbnail,
                fit: BoxFit.cover,
                errorBuilder: (context, _, __) => const Center(
                  child: Icon(Icons.image_not_supported, color: Colors.grey),
                ),
              )
                  : const Center(
                child: Icon(Icons.image_not_supported, color: Colors.grey),
              ),
            ),

            // Video info
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Channel image
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: video.chanelImageUrl.isNotEmpty
                        ? NetworkImage(video.chanelImageUrl)
                        : null,
                    child: video.chanelImageUrl.isEmpty
                        ? Icon(Icons.person, color: Colors.grey[600])
                        : null,
                  ),
                  const SizedBox(width: 12),

                  // Text info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          video.videoTitle,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${video.chanelName} • ${video.viewCount} views • ${video.timeAgo}',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey[300]),
          ],
        );
      },
    );
  }
}