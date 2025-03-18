import 'package:case_study/core/constants/assets_paths.dart';
import 'package:case_study/features/discover/domain/entity/location_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    super.key,
    required this.location,
  });

  final LocationEntity location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(
              0xffF0F0F0,
            ),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 106,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: location.images.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 16,
                  ),
                  width: 106,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      location.images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  location.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xff3B3B3B,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AssetsPaths.star,
                    ),
                    Text(
                      location.rating?.toString() ?? '-',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff616161,
                        ),
                      ),
                    ),
                    Text(
                      '(${location.ratings ?? '-'} ratings)',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff616161,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                if (location.address != null)
                  Text(
                    '${location.address!.street} ${location.address!.suite} ${location.address!.zipCode} ${location.address?.city}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xff9C9C9C,
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 4,
                ),
                if (location.minutesAway != null)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AssetsPaths.personWalking,
                      ),
                      Text(
                        '${location.minutesAway} mins away',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xff9C9C9C,
                          ),
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        AssetsPaths.arrowUpRight,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
