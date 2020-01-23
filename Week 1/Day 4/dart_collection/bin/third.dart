void main() {
  DataHolder<String> data = DataHolder("INI DATA");
  print(data.getData());
  data.setData("BARU");
  print(data.getData());

  DataHolder<int> intdata = DataHolder(123);
  print(intdata.getData());
}

class DataHolder<T> {
  T data;

  DataHolder(data) {
    this.data = data;
  }

  getData() {
    return data;
  }

  setData(data) {
    this.data = data;
  }
}