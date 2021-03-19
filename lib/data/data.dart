class SliderModel{

  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagepath){
    imagePath = getImagepath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}

List<SliderModel> getSlides(){
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/img1.jpg");
  sliderModel.setTitle("");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //2
  sliderModel.setImageAssetPath("assets/img2.jpg");
  sliderModel.setTitle("");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //3
  sliderModel.setImageAssetPath("assets/img3.jpg");
  sliderModel.setTitle("");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //4
  sliderModel.setImageAssetPath("assets/img4.jpg");
  sliderModel.setTitle("");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  return slides;
}