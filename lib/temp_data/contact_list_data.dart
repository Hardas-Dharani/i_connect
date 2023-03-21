List<ContactListData> contactListData = [
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 1',
  //   subtitle: '3 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Nicholas Dunn',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 2',
  //   subtitle: '6 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Jayson Boyd',
  //   isGroup: false,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 3',
  //   subtitle: '11 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Carol Clark',
  //   isGroup: false,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 4',
  //   subtitle: '4 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Janet Fowler',
  //   isGroup: false,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 5',
  //   subtitle: '8 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Nicholas Dunn',
  //   isGroup: false,
  //   trailing: '02:00 pm',
  // ),
  // ContactListData(
  //   imgURL: 'assets/images/i-connect-icon.png',
  //   title: 'Group 6',
  //   subtitle: '9 members',
  //   isGroup: true,
  //   trailing: '02:00 pm',
  // ),
];

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
