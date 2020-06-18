import 'story.dart';

class StoryLogic {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Dein Auto geht auf einer einsamen Landstraße zwischen zwei Dörfern einfach aus. Du hast kein Netz und es ist kalt. Gerade als du beschließt zu laufen, hält neben Dir ein alter Mercedes. Ein Mann mit schmutzigen Händen hält die Tür auf und fragt: "Steigst Du ein, Junge?"',
        choice1: 'Klar komme ich mit. Danke für die Hilfe!',
        choice2: 'Erstmal fragen, ob er ein Mörder ist.'),
    Story(
        storyTitle: 'Unbeeindruckt von der Frage nickt er langsam.',
        choice1: 'Immerhin ist er ehrlich. Da komme ich mit.',
        choice2: 'Moment, ich laufe lieber.'),
    Story(
        storyTitle:
            'Nachdem ihr losfahrt, beginnt der Fremde von seiner Mutter zu sprechen. Er wird immer wütender und hämmert auf sein Lenkrad ein. Er bittet dich bebend das Handschuhfach zu öffnen. Du findest ein Jagdmesser, zwei zerteilte Hände und eine CD von Britney Spears. Er greift nach dem Fach.',
        choice1: 'Ich liebe Britney! Du reichst ihm die CD.',
        choice2: 'Er oder ich! Du stichst ihm das Messer in den Hals.'),
    Story(
        storyTitle:
            'Nachts allein im Dunkeln auf der Landstraße? Ein LKW rammt dich, bis du tot bist.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Während du durch die Frontscheibe fliegst, philosophierst du über die Weisheit deiner Tat.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Du fühlst dich dem Mann verbunden, als ihr "Ooops, I did it again" singt. Im nächsten Dorf lässt er dich an der Tankstelle raus. Bevor du gehst, fragt er nach einem guten Ort zum Vergraben seiner Erinnerungsstücke. Du gibst ihm deine Adresse, denn im Garten ist noch Platz neben deinem Goldfisch. Ach, Fischi...',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  bool nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 1;
        return true;
      case 1:
        choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 3;
        return true;
      case 2:
        choiceNumber == 1 ? _storyNumber = 5 : _storyNumber = 4;
        return true;
      default:
        return false;
    }
  }

  bool buttonShouldBeVisible() {
    return _storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2;
  }
}
