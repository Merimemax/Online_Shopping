package Domain;

public class Product {
    String pid;
    String pname;
    int price;
    String img;

    public Product(String pid, String pname, int price, String img) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.img = img;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
