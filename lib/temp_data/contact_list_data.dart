class ContactListData {
  String? imgURL;
  String? title;
  String? subtitle;
  String? trailing;
  bool? isGroup;

  ContactListData({
    this.imgURL,
    this.title,
    this.subtitle,
    this.trailing,
    this.isGroup,
  });
}

List<ContactListData> contactListData = [
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Group',
    subtitle: '3 members',
    isGroup: true,
    trailing: '02:00 pm',
  ),
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Nicholas Dunn',
    isGroup: false,
    trailing: '02:00 pm',
  ),
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Group',
    subtitle: '3 members',
    isGroup: true,
    trailing: '02:00 pm',
  ),
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Nicholas Dunn',
    isGroup: false,
    trailing: '02:00 pm',
  ),
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Group',
    subtitle: '3 members',
    isGroup: true,
    trailing: '02:00 pm',
  ),
  ContactListData(
    imgURL: 'i-connect-icon.png',
    title: 'Nicholas Dunn',
    isGroup: false,
    trailing: '02:00 pm',
  ),
];
