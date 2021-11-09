part of 'validations.dart';

class ValidationMessagesConfig extends StatefulWidget {
  final ValidationMessages messages;
  final Widget child;
  const ValidationMessagesConfig(
      {Key? key, required this.messages, required this.child})
      : super(key: key);

  @override
  _ValidationMessagesConfigState createState() =>
      _ValidationMessagesConfigState();

  static ValidationMessages? of(BuildContext context) => context
      .findRootAncestorStateOfType<_ValidationMessagesConfigState>()
      ?._messages;
}

class _ValidationMessagesConfigState extends State<ValidationMessagesConfig> {
  late ValidationMessages _messages;
  @override
  void didChangeDependencies() {
    var perent = ValidationMessagesConfig.of(context);
    _messages = perent?.withOther(widget.messages) ?? widget.messages;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
