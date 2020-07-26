import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int tscore;

  Result(this.tscore);

  String get results {
    var resultPhrase = "If I could give you one thing in life, "
        "\n I'd give you the ability to see yourself through my eyes, only then would you realize how special you are to me"
        "\n So far, every moment we've spent together has been awesome. But I promise you, that the best is yet to come."
        "\n I'm so completely in love with you. I wake to think of you and I sleep to see you in my dreams."
        "\n Everyday seems like a blessing since I have met you. I feel so lucky and honored to be in love with you with all of my heart."
        "\n Thank you for sharing your love with me. It's a truly wonderful gift. I will love you always.\n\n\n\n\n";
    if (tscore <= 30)
      resultPhrase += " Total Score : $tscore \n\n WHAAAAATTTTTT, you don't know me";
    else if (tscore == 40)
      resultPhrase += " Total Score : $tscore \n\n MANAGEABLE, I expected a perfect score";
    else
      resultPhrase += " Total Score : $tscore \n\n I knew it.. You are awesome baby :)";
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        results,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
