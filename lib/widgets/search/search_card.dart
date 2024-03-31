import 'package:flutter/material.dart';

class SearchCard extends StatefulWidget {
  const SearchCard({Key? key, required this.data, required this.index})
      : super(key: key);

  final List<Map<String, dynamic>> data;
  final int index;

  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  bool _switchValue = false;

  final MaterialStateProperty<Color?> trackColor =
  MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff66ad92);
      }
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            const SizedBox(height: 8),
            _buildTitle(),
            _buildFirstSubTitle(),
            _buildSecondSubTitle(),
            _buildSwitch(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      widget.data[widget.index]['img'],
      fit: BoxFit.cover,
    );
  }

  Widget _buildTitle() {
    if (widget.data[widget.index]['title'] != null) {
      return Text(
        widget.data[widget.index]['title'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildFirstSubTitle() {
    if (widget.data[widget.index]['firstSubTitle'] != null) {
      return Text(
        widget.data[widget.index]['firstSubTitle'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white38,
          fontSize: 11,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildSecondSubTitle() {
    if (widget.data[widget.index]['secondSubTitle'] != null) {
      return Text(
        widget.data[widget.index]['secondSubTitle'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: widget.data[widget.index]['color'],
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildSwitch() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "В уподобане",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          Switch(
            value: _switchValue,
            trackColor: trackColor,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
