List<IndividualData> myIndividualList = [
  IndividualData(
    imgURL:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    title: 'Nicholas Dunn',
  ),
  IndividualData(
    imgURL:
        'https://media.vanityfair.com/photos/6319eab06009e759e6638e28/master/w_2560%2Cc_limit/1421315651',
    title: 'Jayson Boyd',
  ),
  IndividualData(
    imgURL:
        'https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg',
    title: 'Carol Clark',
  ),
  IndividualData(
    imgURL:
        'https://cdn.shopify.com/s/files/1/0850/2114/files/tips_to_help_heighten_senses_480x480.png?v=1624399167',
    title: 'Janet Fowler',
  ),
  IndividualData(
    imgURL:
        'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
    title: 'Jack Spencer',
  ),
  IndividualData(
    imgURL:
        'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    title: 'Martha Walter',
  ),
  IndividualData(
    imgURL:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    title: 'Liana Star',
  ),
];

class IndividualData {
  String? imgURL;
  String? title;

  IndividualData({
    this.imgURL,
    this.title,
  });
}
