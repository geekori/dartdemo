/*
混合（mixin）

支持单继承

Person 1. Teacher   2. Boss
MyChild  extends MyParent


 */

mixin Teacher {
  String course;

  String getCourse() {
    return course;
  }
  setCourse(String course) {
    this.course = course;
  }
}
mixin Boss {
  String company;
  String getCompany() {
    return company;
  }

  setCompany(String company) {
    this.company = company;
  }

}
class Author {
  String book;

  String getBook() {
    return book;
  }
  void setBook(String book) {
    this.book = book;
  }
}
class Person extends Author with Teacher,Boss {
  String getCompany() {
    return "<" + super.getCompany() + ">";
  }
}
void main() {
  var person = Person();
  person.setBook("Python从菜鸟到高手");
  print(person.getBook());

  person.setCompany("欧瑞科技");
  print(person.getCompany());
}